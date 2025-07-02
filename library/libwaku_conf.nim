type ShardingMode* = enum
  AutoSharding
  StaticSharding

type AutoShadingConf* = object
  numShardsInCluster*: uint16

type NetworkConf* = object
  bootstrapNodes*: seq[string]
  staticStoreNodes*: seq[string]
  clusterId*: uint16
  shardingMode*: ShardingMode
  AutoShardingConf*: Option[AutoShardingConf]

type WakuMode* = enum
  Edge
  Relay

type LibWakuConf* = object
  mode*: WakuMode
  networkConf*: NetworkConf
  storeConfirmation*: bool
