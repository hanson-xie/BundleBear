{{ config
(
    materialized = 'table'
)
}}

SELECT  *, 'arbitrum' AS chain FROM {{ ref('erc4337_arbitrum_account_deployments') }}
UNION ALL
SELECT  *, 'avalanche' AS chain FROM {{ ref('erc4337_avalanche_account_deployments') }}
UNION ALL
SELECT  *, 'base' AS chain FROM {{ ref('erc4337_base_account_deployments') }}
UNION ALL
SELECT  *, 'ethereum' AS chain FROM {{ ref('erc4337_ethereum_account_deployments') }}
UNION ALL
SELECT  *, 'optimism' AS chain FROM {{ ref('erc4337_optimism_account_deployments') }}
UNION ALL
SELECT  *, 'polygon' AS chain FROM {{ ref('erc4337_polygon_account_deployments') }}