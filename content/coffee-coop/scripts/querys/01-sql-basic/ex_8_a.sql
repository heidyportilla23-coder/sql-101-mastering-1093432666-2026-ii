-- exercise 8-a
/**a)Consulteelc´odigo,lafinca,elpuntodecompra,lahoraderecepci´on,eltipode caf´eyelpesobrutodelasentregasdeesed´ıa
(useLIKEsobredeliveryid),con losaliasdelivery,farmid,collectionpointid,receivedat,
coffeetype ygrossweightkg,ordenadasporhoraderecepci´on.**/
SELECT
    T1.delivery_id AS delivery,
    T1.farm_id AS farm_id,
    T1.collection_point_id AS collection_point_id,
    T1.delivered_at AS received_at,
    T1.coffee_type AS coffee_type,
    T1.gross_weight_kg AS gross_weight_kg
FROM buy.deliveries AS T1
WHERE T1.delivery_id LIKE 'DLV-20260930-%'
ORDER BY T1.delivered_at ASC;
/**
   delivery       | farm_id | collection_point_id |     received_at     |  coffee_type  | gross_weight_kg
---------------------+---------+---------------------+---------------------+---------------+-----------------
 DLV-20260930-000001 |  121925 |                  68 | 2026-09-30 06:01:10 | dry_parchment |           51.53
 DLV-20260930-000002 |   39639 |                  48 | 2026-09-30 06:03:32 | dry_parchment |          124.98
 DLV-20260930-000003 |  228920 |                  80 | 2026-09-30 06:04:40 | wet_parchment |          112.33
 DLV-20260930-000004 |    2649 |                  90 | 2026-09-30 06:07:26 | dry_parchment |          138.29
 DLV-20260930-000005 |  163723 |                  10 | 2026-09-30 06:07:51 | dry_parchment |          256.42
 DLV-20260930-000006 |   58408 |                 170 | 2026-09-30 06:11:03 | dry_parchment |          139.81
 DLV-20260930-000007 |  201601 |                  57 | 2026-09-30 06:15:25 | dry_parchment |          404.97
 DLV-20260930-000008 |  135490 |                  53 | 2026-09-30 06:16:53 | dry_parchment |          175.92
 DLV-20260930-000009 |  108211 |                  54 | 2026-09-30 06:17:34 | dry_parchment |           56.80
 DLV-20260930-000010 |   37288 |                  67 | 2026-09-30 06:20:30 | dry_parchment |          269.43
 DLV-20260930-000011 |  160644 |                  24 | 2026-09-30 06:21:43 | dry_parchment |          166.55
 DLV-20260930-000012 |  104065 |                  59 | 2026-09-30 06:30:33 | dry_parchment |           47.86
 DLV-20260930-000013 |  112753 |                  99 | 2026-09-30 06:30:37 | dry_parchment |           47.40
 DLV-20260930-000014 |  159069 |                 131 | 2026-09-30 06:34:23 | dry_parchment |          164.91
 DLV-20260930-000015 |    9219 |                 117 | 2026-09-30 06:35:39 | dry_parchment |          136.77
 DLV-20260930-000016 |  119208 |                 124 | 2026-09-30 06:36:30 | dry_parchment |          171.44
 DLV-20260930-000017 |  130072 |                 115 | 2026-09-30 06:40:28 | dry_parchment |          545.69
 DLV-20260930-000018 |   99915 |                  29 | 2026-09-30 06:40:54 | dry_parchment |          247.11
 DLV-20260930-000019 |  192605 |                 147 | 2026-09-30 06:42:39 | wet_parchment |          106.26
 DLV-20260930-000020 |  214651 |                  88 | 2026-09-30 06:43:44 | dry_parchment |          115.75
 DLV-20260930-000021 |  154560 |                  95 | 2026-09-30 06:44:19 | dry_parchment |          143.29
 DLV-20260930-000022 |  103810 |                 103 | 2026-09-30 06:48:44 | dry_parchment |          247.73
 DLV-20260930-000023 |  149422 |                  16 | 2026-09-30 06:52:28 | dry_parchment |          221.51
 DLV-20260930-000024 |   10480 |                  78 | 2026-09-30 07:00:22 | dry_parchment |          222.49
 DLV-20260930-000025 |  209837 |                 155 | 2026-09-30 07:02:12 | dry_parchment |          176.53
 DLV-20260930-000026 |  155343 |                   8 | 2026-09-30 07:08:12 | dry_parchment |          162.24
 DLV-20260930-000027 |  206523 |                  31 | 2026-09-30 07:09:05 | dry_parchment |          184.59
-- Más  --
**/