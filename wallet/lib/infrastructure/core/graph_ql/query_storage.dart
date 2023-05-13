abstract class QueryStorage {
  const QueryStorage._();

  static const getBalances = '''
query Balances(\$address: Address) {
  balances(filter: {owner: \$address}, first: 10) {
    pageInfo {
      hasNextPage
      hasPreviousPage
      startCursor
      endCursor
    }
    nodes {
      ...balanceFragment
    }
  }
}

fragment balanceFragment on Balance {
  assetId
  amount
}
''';

  static const getTransactions = '''
query Transactions(\$address: Address, \$limit: Int, \$endCursor: String) {
  transactionsByOwner(owner: \$address, first: \$limit, after: \$endCursor) {
    pageInfo {
      hasNextPage
      hasPreviousPage
      startCursor
      endCursor
    }
    nodes {
      ...transactionFragment
      receipts {
        ...receiptFragment
      }

      inputs {
        __typename
        ... on InputCoin {
          owner
          amount
          assetId
        }
      }
      outputs {
        __typename
        ... on CoinOutput {
          to
          amount
          assetId
        }
        ... on ChangeOutput {
          to
          amount
          assetId
        }
      }
    }
  }
}

fragment transactionFragment on Transaction {
  id
  gasPrice
  gasLimit
  maturity
  txPointer
  isScript
  isCreate
  isMint
  status {
    type: __typename
    ... on SubmittedStatus {
      time
    }
    ... on SuccessStatus {
      block {
        id
      }
      time
    }
    ... on FailureStatus {
      block {
        id
      }
      time
      reason
    }
  }
  script
}

fragment receiptFragment on Receipt {
  receiptType
  gasUsed
}
''';
}
