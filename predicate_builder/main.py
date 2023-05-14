import subprocess
import tempfile

from flask import Flask, json, request

PREDICATE_TEMPLATE_PATH = 'resources/predicate_template.sw'

api = Flask(__name__)


def _get_predicate_template() -> str:
    with open(PREDICATE_TEMPLATE_PATH, 'r') as file:
        return file.read()


def _build_predicate_source(public_key: str) -> str:
    template: str = _get_predicate_template()
    return template.replace('${SECRET_PUBLIC_KEY}', public_key)


def _format_hex(secret: str) -> str:
    if secret.startswith('0x'):
        return secret
    return '0x' + secret


def get_predicate_bytes(public_key: str) -> str:
    with tempfile.TemporaryDirectory() as tmp_dir_path:
        tmp_dir_name = tmp_dir_path.split('/')[-1]
        subprocess.run(["forc", "init", "--path", tmp_dir_path])
        predicate_source: str = _build_predicate_source(_format_hex(public_key))
        with open(f'{tmp_dir_path}/src/main.sw', 'w') as predicate_main:
            predicate_main.write(predicate_source)

        subprocess.run(["forc", "build", "--path", tmp_dir_path])

        with open(f'{tmp_dir_path}/out/debug/{tmp_dir_name}.bin', 'rb') as predicate_bin:
            return predicate_bin.read().hex()


@api.route('/predicate_bytes', methods=['GET'])
def predicate_bytes():
    public_key = request.args.get('public_key')
    pred_bytes_hex = get_predicate_bytes(public_key)
    return json.dumps(pred_bytes_hex)


@api.route('/', methods=['GET'])
def ping():
    return 'pong'


if __name__ == '__main__':
    api.run(host='0.0.0.0', port=8080)
