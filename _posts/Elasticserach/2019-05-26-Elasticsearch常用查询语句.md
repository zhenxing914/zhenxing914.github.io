```json

GET ls-3-2017.04.13/_search
{
  
}

PUT /index_test

curl 

PUT /index



POST /index/fulltext/_mapping
{

    "fulltext": {

             "_all": {

            "analyzer": "ik_max_word",

            "search_analyzer": "ik_max_word",

            "term_vector": "no",

            "store": "false"

        },

        "properties": {

            "content": {

                "type": "text",

                "analyzer": "ik_max_word",

                "search_analyzer": "ik_max_word",

                "include_in_all": "true",

                "boost": 8

            }

        }

    }

}

POST /index/fulltext/1
{"content":"�������������˵��Ǹ���̯����"}


POST /index/fulltext/2
{"content":"������������У����������·Ȩ"}


POST /index/fulltext/3
{"content":"�к��澯��ͻ���飺����ƽ��ÿ����1���й��洬"}

POST /index/fulltext/11
{"content":"�к��澯��ͻ���飺����ƽ��ÿ����1���й��洬"}

POST /index/fulltext/4
{"content":"�й�פ��ɼ�����¹�����������ǹ�� �ӷ�������"}

POST /index/fulltest/_search
{
  "query":{
    "term":{
      "content":"����*"
    }
  }
}


GET /index/fulltext/_search
{
  "query":
  {
    "match":{
      "content":"�������������˵��Ǹ���̯����"
    }
  }
}


GET userprofiling/usertag/17321280019




POST /index/fulltext/_search
{

    "query" : { "match" : { "content" : "�й�" }},

    "highlight" : {

        "pre_tags" : ["<tag1>", "<tag2>"],

        "post_tags" : ["</tag1>", "</tag2>"],

        "fields" : {

            "content" : {}

        }

    }

}















GET /userprofiling/usertag/17317978869


POST userprofiling/usertag/_search
{
  "query":{
    "bool": {
      "must": [
        {  "match": {
          "tongxinaddress":  "÷¤·"
          }
        },
        {
          "match": {
            "agerange":  "90��"
          }
        }
      ]
    }
  }
}

POST userprofiling/usertag/_search
{
  "query":{
    "bool": {
      "must": [
        {
          "match": {
            "agerange":  "90��"
          }
        }
      ]
    }
  }
}

POST userprofiling/usertag/_search
{
  "query":{
    "bool": {
      "must": [
        {
          "match": {
            "agerange":  "90��"
          }
        }
      ]
    }
  }
}


#term��ѯ
POST  userprofiling/usertag/_search
{
  "query": {
    "match": {
      "birthday":  "19840905"
    }
  }
}

POST /testes/userlist/1
{
  "name":"������",
  "age" : 30,
  "sex" : "��",
  "hometown":"����",
  "home_address":"�Ϻ���"
}

POST /testes/userlist/_search
{
  "query":{
    "term":{
      "name":"������"
    }
  }
}

GET  testes/userlist/_search
{
  "query":{
    "term":{
        "name":"������"
    }
  }
}


DELETE  testesz_analyzer

PUT testes_analyzer

POST /testes_analyzer/userlist_analyzer/_mapping
{
  "userlist_analyzer":{
  "properties": {
    "name":{
      "type":"text",
      "analyzer": "ik_smart",
      "search_analyzer": "ik_smart"
    },
    "homeaddress":{
      "type":"text",
      "analyzer": "ik_smart",
      "search_analyzer": "ik_smart"
    },
    "intresting":{
      "type": "text",
      "analyzer": "ik_smart"
    }
  }
  }
}

POST /testes_analyzer/userlist_analyzer/1
{
  "id":1,
  "name":"����",
  "homeaddress":"�Ϻ����ֶ�����������·258Ū",
  "intresting":"����",
  "hometown":"����"
}


POST /testes_analyzer/userlist_analyzer/2
{
"id":1,
"name":"����",
"homeaddress":"�Ϻ����ֶ�����������·258Ū",
"intresting":"����",
"hometown":"����"
}
        
POST /testes_analyzer/userlist_analyzer/3
{
"id":1,
"name":"����",
"homeaddress":"�Ϻ����ֶ���������·123��",
"intresting":"����",
"hometown":"ɽ��"
}

# ��ѯ������Ϣ
POST  testes_analyzer/userlist_analyzer/_search
{
  "query": {
    "match_all": {}
  }
}

## name config analyzer and search_analyzer
POST testes_analyzer/userlist_analyzer/_search
{
  "query": {
    "term": {
      "name": {
        "value": "����"
      }
    }
  }
}

#intresting config analyzer not serarch_analyzer
POST testes_analyzer/userlist_analyzer/_search
{
  "query": {
    "term": {
      "intresting": {
        "value": "����"
      }
    }
  }
}

POST testes_analyzer/userlist_analyzer/_search
{
  "query": {
    "term": {
      "homeaddress":  "�Ϻ���"
    }
  }
}

POST testes_analyzer/userlist_analyzer/_search
{
  "query": {
    "term": {
      "homeaddress":  "��·"
    }
  }
}
 
 
POST /userprofiling/usertag/17_search
{
  "query": {
    "match": {
      "FIELD": "TEXT"
    }
  }
}
 
POST testes_analyzer/userlist_analyzer/_search
{
  "query": {
    "match": {
      "homeaddress":  "����·"
    }
  }
}
 
POST /_analyze?analyzer=ik_smart & text=�Ϻ����ֶ���������·123�� & prett

POST /_analyze?analyzer=ik_smart & pretty=true & text="�Ϻ����ֶ���������·123"

GET /testes_analyzer/_analyze?text=�л����񹲺͹�&tokenizer=ik_smart


PUT /espressuretest
{
    "settings" : {
        "index" : {
            "number_of_shards" : 1, 
            "number_of_replicas" : 1 
        }
    }
}

DELETE /esdocpressuretest

PUT /esdocpressuretest
{
    "settings" : {
        "index" : {
            "number_of_shards" : 5, 
            "number_of_replicas" : 0 
        }
    }
}


DELETE /espressuretest

POST /espressuretest/_search
{
  "query":{
    "match_all": {}
  }
}
POST /esdocpressuretest/_search
{
  "query":{
    "match_all": {}
  }
}



POST espressuretest/13800000002/_search
{
  "query": {
    "match_all": {}
  }
}

 DELETE testes
 

#��������  
 PUT my_index
{
  "mappings": {
    "my_type": {
      "properties": {
        "full_text": {
          "type":  "string"
        },
        "exact_value": {
          "type":  "string",
          "index": "not_analyzed"
        }
      }
    }
  }
}


#��������

PUT my_index/my_type/1
{
  "full_text":   "Quick Foxes!",
  "exact_value": "Quick Foxes!"  
}

PUT my_index/my_type/2
{
  "full_text":   "In other words, all terms must be present in a single field for a document to match.",
  "exact_value": "In other words, all terms must be present in a single field for a document to match."  
}

GET my_index/my_type/1

PUT /myindex

POST /myindex/mytype/_mapping
{
  "userlist_analyzer":{
  "properties": {
    "fulltext":{
      "type":"text"
    },
    "extratext":{
      "type":"text",
      "analyzer": "ik_smart",
      "search_analyzer": "ik_smart"
    }
  
  }
  }
}

PUT /myindex
{
    "settings" : {
        "index" : {
            "number_of_shards" : 1, 
            "number_of_replicas" : 1 
        }
    }
}

PUT _cluster/settings
{
  "persistent": {
    "cluster.routing.allocation.enable": "all"
  }
}
PUT _cluster/settings 
{ 
  "persistent": { 
        "cluster.routing.allocation.enable": "none" }
}



 GET userprofiling/usertag/




POST ls-test-20160322/_search
{
  "query":{
    "range": {
      "start_time": {
        "gte": "2017-01-11T19:29:00Z",
        "lte": "2017-01-11T19:50:15Z"
      }
    }
  }
}

GET    ls-test-20160322/_search
{
  "query": {
    "constant_score": {
      "filter": {
        "range": {
          "start_time": {
            "gte": "2017-01-11T15:10:00Z",
            "lte": "2017-01-11T15:50:00Z"
          }
        }
      }
    }
  }
}

GET / 
{
  "query":{
    "match":{
      "log_level":{
        "query":"WARN",
        "type" : "phrase"
      }
    }
}
}


#1. search last location 
GET ls-3-2017.04.13/_search
{
  "query": {
    "match": {
      "msisdn": "18016379761"
    }
  },
  "sort": [
    {
      "start_time": {
        "order": "desc"
      }
    }
  ],
  "from" : 0, "size" : 1
}

#1. search last location 
GET ls-3-2017*/_search
{
  "query": {
    "match": {
      "msisdn": "17321280019"
    }
  },
  "sort": [
    {
      "start_time": {
        "order": "desc"
      }
    }
  ],
  "from" : 0, "size" : 1
}

#2. wander location search
GET ls-3-2017*/_search
{
  "_source": ["city","start_time"], 
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "msisdn": "15352561140"
          }
        }
      ],
      "filter": {
        "range": {
          "start_time": {
            "gte": "2017-04-11T15:10:00Z",
            "lte": "2017-04-13T15:50:00Z"
          }
        }
      }
    }
  }
}

GET ls-3-2017*/_search
{
  "_source": ["city","start_time"], 
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "msisdn": "15352561140"
          }
        }
      ],
      "filter": {
        "range": {
          "start_time": {
            "gte": "15:10:00Z",
            "lte": "15:50:00Z"
          }
        }
      }
    }
  }
}


GET ls-3-2017.04.13/_search
{
  "aggs": {
    "range": {
      "date_range": {
        "field": "date",
        "ranges": [
          {
            "from": "2017-04-13T10:58:17.000Z",
            "to": "2017-04-13T11:58:17.000Z"
          },
          {
            "from": "2017-04-13T21:58:17.000Z",
            "to": "2017-04-13T22:58:17.000Z"
          }
        ]
      }
    }
  }
}

GET ls-3-2017.05*/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "msisdn": "15352561140"
          }
        }
      ],
      "filter": {
        "range": {
          "start_time": {
            "gte": "2017-04-13T00:10:00Z",
            "lte": "2017-04-13T15:50:00Z"
          }
        }
      }
    }
  },
  "aggs": {
    "test": {
      "date_histogram": {
        "field": "start_time",
        "interval": "hour",
        "offset": "+1h"
      }
    }
  }
  
}


#1.get_history_track

GET ls-3-2017*/_search
{
  "_source": ["city","start_time"], 
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "msisdn": "17321280019"
          }
        }
      ],
      "filter": {
        "range": {
          "start_time": {
            "gte": "2017-04-11T15:10:00Z",
            "lte": "2017-04-13T15:50:00Z"
          }
        }
      }
    }
  }
}

#2.get_roaming_destination


GET ls-3-2017*/_search
{
  "_source": ["city","start_time","end_time"], 
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "msisdn": "17321280019"
          }
        }
      ],
      "filter": {
        "range": {
          "start_time": {
            "gte": "2017-04-11T15:10:00Z",
            "lte": "2017-04-13T15:50:00Z"
          }
        }
      }
    }
  }
}


#3.get_time_interval
GET ls-3-2017*/_search
{
  "_source": ["city","start_time","end_time"], 
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "msisdn": "17321280019"
          }
        }
      ],
      "filter": {
        "range": {
          "hours": {
            "gte": "10",
            "lte": "20"
          }
        }
      }
    }
  }
}



#4.get_weekend_location

GET ls-3-2017*/_search
{
  "_source": ["city","start_time","end_time"], 
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "msisdn": "17321280019"
          }
        },
      {
          "match": {
            "time_flag": "weekend"
          }
        }
      ],
      "filter": {
        "range": {
          "hours": {
            "gte": "10",
            "lte": "20"
          }
        }
      }
    }
  }
}


PUT /ls-3-2017.04.18/_settings
{

    "index" : {

        "refresh_interval" : "30s"

    } 
  
}

PUT /ls-3-2017.04.18/_settings
{

    "index" : {
        "number_of_replicas" : 1

    }
}



GET /ls-3-2017.04.20/_settings


DELETE  ls-3-2017.04.19

PUT /ls-3-2017.05.03
{
    "settings" : {
        "index" : {
            "number_of_shards" : 7, 
            "number_of_replicas" : 1
        }
    }
}

PUT /ls-3-2017.05.03/_settings
{

    "index" : {

        "refresh_interval" : "30s"

    } 
  
}



 GET  /_template/nn*
 
 DELETE /_template/nn_log
 
 PUT _template/nn_log
{
  "template":   "nn_log-*", 
  "mappings": {
	"org.apache.hadoop.hdfs.server.namenode.FSEditLog" : {
        "properties" : {
          "Number_of_transactions" : {
			"type": "integer"
          },
          "time_of_transactions" : {
			"type": "integer"
          },
          "number_of_transactions_batched_in_Sync" : {
			"type": "integer"
          },
          "number_of_syncs" : {
			"type": "integer"
          },
          "synctimes" : {
			"type": "long"
          }		  
        }
      }
    }
}
 
 

#
# cluster update
 
# 1.close routing
 PUT _cluster/settings 
 { 
  "persistent": { 
        "cluster.routing.allocation.enable": "none" }
}
 
# 2.
 POST _flush/synced
 
 
# 3.
 PUT _cluster/settings
{
  "persistent": {
    "cluster.routing.allocation.enable": "all"
  }
}
#####
 
 GET _nodes?filter_path=**.mlockall
 
 
 GET  _template/wzfw3
 
 DELETE _template/wzfw3
 
  PUT _template/wzfw3
{
  "template":   "ls-3*", 
      "settings" : {
        "index" : {
            "number_of_shards" : 8, 
            "number_of_replicas" : 1,
            "refresh_interval" : "30s"
        }
    },
  "mappings": {
	"morning" : {
        "properties" : {
          "hours" : {
			      "type": "integer"
          },
          "prov" : {
			      "type": "integer"
          },
          "zip_code" : {
			      "type": "integer"
          },
          "city" : {
			      "type": "long"
          },
          "time_flag" : { 
			      "type": "keyword"
          },
          "msisdn":{
            "type": "keyword"
          },
          "data_source":
          {
            "type": "keyword"
          },
          "start_time":{
            "type": "date"
          },
          "loc":{
            "type": "geo_point"
          },
          "ymd":{
            "type": "keyword"
          }
        }
      },
      	"afternoon" : {
        "properties" : {
          "hours" : {
			      "type": "integer"
          },
          "prov" : {
			      "type": "integer"
          },
          "zip_code" : {
			      "type": "integer"
          },
          "city" : {
			      "type": "long"
          },
          "time_flag" : { 
			      "type": "keyword"
          },
          "msisdn":{
            "type": "keyword"
          },
          "data_source":
          {
            "type": "keyword"
          },
          "start_time":{
            "type": "date"
          },
          "loc":{
            "type": "geo_point"
          },
          "ymd":{
            "type": "keyword"
          }
        }
      },
      
      "night" : {
        "properties" : {
          "hours" : {
			      "type": "integer"
          },
          "prov" : {
			      "type": "integer"
          },
          "zip_code" : {
			      "type": "integer"
          },
          "city" : {
			      "type": "long"
          },
          "time_flag" : { 
			      "type": "keyword"
          },
          "msisdn":{
            "type": "keyword"
          },
          "data_source":
          {
            "type": "keyword"
          },
          "start_time":{
            "type": "date"
          },
          "loc":{
            "type": "geo_point"
          },
          "ymd":{
            "type": "keyword"
          }
        }
      }
    }
}

put testsong


 DELETE  nn_log-2017.04*
 
 PUT /ls-3-2017-05-04
{
    "settings" : {
        "index" : {
            "number_of_shards" : 8, 
            "number_of_replicas" : 0
        }
    }
}
 
GET _nodes/stats/thread_pool?pretty
 
GET _template
 
DELETE  nn_log-2017.05.0*

 
PUT ls-3-2017-05-04 



PUT  ls-3-2017.05.16 
 
GET ls-3-2017.05.10/_mappings

PUT /ls-3-2017.05.05/_settings
{

    "index" : {

        "refresh_interval" : "30s"

    } 
  
}

GET ls-3-2017.05.15/_mapping


DELETE ls-3-2017.05.16 

PUT  ls-3-2017.05.18 

GET ls-3-2017.05.16/_mapping

PUT  ls-3-2017.05.23 

PUT  ls-3-2017.05.24

PUT  ls-3-2017.05.25

PUT  ls-3-2017.05.26

PUT  ls-3-2017.05.27

 GET ls-3-2017.05.22/_search
{
  "query": {
    "match": {
      "msisdn": "17321280019"
    }
  }
}

GET /userprofiling/usertag/17784676420/_search



```

```json

GET /_cat/indices


PUT /dcoos-%25{component}-2018.05.03

DELETE /dcoos2*


GET dcoos-dcoos-2018.06.14/_search


POST dcoos-dcoos-2018.06.14/log
{
  "timestamp": 1528977025000 ,
"appId": "16", 
"component":"dcoos",
"packageId": "00000015" ,
"packageName":"faff", 
"apiId": 16,  
"apiName": "话费查询",  
"basePath":"/v2", 
"gatewayName":"上海市网关", 
"targetBasePath":"/weather",   
"targetHost":"www.chinatelecom.js.cn",    
"targetScheme":"https",
"clientIP":"192.168.1.1", 
"gatewayIP":"163.79.159.209", 
"userAgent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36", 
"requestSize": 5024,  
"responseSize":5024,   
"method":"GET", 
"host":"dcoos.com",  
"uri":"/apps/cart.jsp?appID=4735",   
"requestURL":"http://dcoos.com/api/get", 
"requestId":"rerqr-sfdsf-redsf-fdsfdsf-sdfds",
"businessCode":"100203",  
"requestBeginTime":1523412000000 ,	
"backendResponseTime": 278, 
"totalTime": 46,  
"backendResponseCode":"500", 
"gatewayResponseCode":"500"

}






POST /gateway-api-stat-2018.06.15/statInfo/_search?size=100


POST /gateway-api-stat*/statInfo/_search
{
  "size": 10, 
  "query": {

  "bool" : {
    "must" : [ {
        "range" : {
          "timestamp" : { "from" : 1528822644000,"to" : "now" }
        }
      }]
  }
},
"aggs": {
  "sum": {
    "terms": {
      "field": "upload_api_id",
      "size": 100
    }
  }
}
}

POST /gateway-api-stat*/statInfo/_search
{
  "size": 10, 
  "query": {

  "bool" : {
    "must" : [
      {
        "range" : {
          "timestamp" : {
            "from" : 1528822644000,
            "to" : "now"
          }
        }
      }
    ]
  }
  
},
"aggs": {
  "avg":{
    "avg": {
      "field": "system_success_percent"
    }
  }
}

}



POST /gateway-api-stat*/statInfo/_search
{
  "query": {
    "terms": {
      "upload_api_id": [
       "6001010001C300001XXXXXXXXXXX7"
        
      ]
    }
  }
}

POST /gateway-api-stat*/statInfo/_search
{
  "query": {
  "bool" : {
    "must" : [
      {
        "range" : {
          "timestamp" : {
            "from" : 1527696000000,
            "to" : 1527758619561,
            "include_lower" : true,
            "include_upper" : false,
            "boost" : 1.0
          }
        }
      },
      {
        "terms" : {
          "upload_api_id" : [
            "6001010001C300004XXXXXXXXXXX1","6001010001C300004XXXXXXXXXXX3"
          ],
          "boost" : 1.0
        }
      }
    ],
    "disable_coord" : false,
    "adjust_pure_negative" : true,
    "boost" : 1.0
  }
}
}



POST /gateway-api-stat*/statInfo/_search
{
  "query":{

  "bool" : {
    "must" : [
      {
        "range" : {
          "timestamp" : {
            "from" : "2018-05-30||/d",
            "to" : "now",
            "include_lower" : true,
            "include_upper" : false,
            "boost" : 1.0
          }
        }
      }
    ]
  }
}
,"aggs": {
  "histogram": {
    "histogram": {
      "field": "timestamp",
      "interval": 3600
    },
    "aggs": {
      "sum": {
        "sum": {
          "field": "use_quantity"
        }
      }
    }
  }
}
}
# 6001010001C100001XXXXXXXXXXX4
# 6001010001C200001XXXXXXXXXXX1
# 6001010001C200002XXXXXXXXXXX2
# 6001010001C200003XXXXXXXXXXX3
# 6001010001C200004XXXXXXXXXXX5
# 6001010001C200005XXXXXXXXXXX6
# 6001010001C300001XXXXXXXXXXX7
# 6001010001C300002XXXXXXXXXXX8
# 6001010001C400001XXXXXXXXXXX8
# 6001010001C400002XXXXXXXXXXX8


GET /gateway-api-stat-2018.06.12/_search?size=20


POST /gateway-api-stat-2018.06.13/statInfo
{
  
  "api_id": 82,
  "avg_latency": 152.514270148,
  "business_success_percent": 0.39,
  "prov_id": 82,
  "consumer_id": "",
  "start_dt": "1528098549000",
  "consumer_name": "",
  "prov_name": "提供者001",
  "use_quantity": 49,
  "id": "AmJludWiNroG2Z7RFksSOYtxhnPv46He5zpDbC0UEjM9cywX1f",
  "upload_api_id": "6001010001C100001XXXXXXXXXXX4",
  "catalog_code": "2c4LdC6",
  "system_success_percent": 0.50,
  "gate_way_id": "7276706129",
  "timestamp": 1528822764000
}






POST /gateway-api-stat-2018.05.31/statInfo
{
  "api_id": 82,
  "avg_latency": 152.514270148,
  "business_success_percent": 0.9,
  "prov_id": 82,
  "consumer_id": "",
  "start_dt": "1527584043008",
  "consumer_name": "",
  "prov_name": "提供者001",
  "use_quantity": 49,
  "id": "AmJludWiNroG2Z7RFksSOYtxhnPv46He5zpDbC0UEjM9cywX1f",
  "upload_api_id": "6001010001C300004XXXXXXXXXXX1",
  "catalog_code": "2c4LdC6",
  "system_success_percent": 0.93,
  "gate_way_id": "7276706129",
  "timestamp": 1528822644000
}


POST /gateway-api-stat-2018.05.31/statInfo
{
  "api_id": 82,
  "avg_latency": 152.514270148,
  "business_success_percent": 0.9,
  "prov_id": 82,
  "consumer_id": "",
  "start_dt": "1527584043008",
  "consumer_name": "",
  "prov_name": "提供者001",
  "use_quantity": 49,
  "id": "AmJludWiNroG2Z7RFksSOYtxhnPv46He5zpDbC0UEjM9cywX1f",
  "upload_api_id": "6001010001C300004XXXXXXXXXXX2",
  "catalog_code": "2c4LdC6",
  "system_success_percent": 0.93,
  "gate_way_id": "7276706129",
  "timestamp": 1527755690000
}

POST /gateway-api-stat-2018.05.31/statInfo
{
  "api_id": 82,
  "avg_latency": 152.514270148,
  "business_success_percent": 0.9,
  "prov_id": 82,
  "consumer_id": "",
  "start_dt": "1527584043008",
  "consumer_name": "",
  "prov_name": "提供者001",
  "use_quantity": 49,
  "id": "AmJludWiNroG2Z7RFksSOYtxhnPv46He5zpDbC0UEjM9cywX1f",
  "upload_api_id": "6001010001C300004XXXXXXXXXXX3",
  "catalog_code": "2c4LdC6",
  "system_success_percent": 0.93,
  "gate_way_id": "7276706129",
  "timestamp": 1527755690000
}


POST /gateway-api-stat-2018.05.31/statInfo
{
  "api_id": 82,
  "avg_latency": 152.514270148,
  "business_success_percent": 0.9,
  "prov_id": 82,
  "consumer_id": "",
  "start_dt": "1527584043008",
  "consumer_name": "",
  "prov_name": "提供者001",
  "use_quantity": 49,
  "id": "AmJludWiNroG2Z7RFksSOYtxhnPv46He5zpDbC0UEjM9cywX1f",
  "upload_api_id": "6001010001C300004XXXXXXXXXXX4",
  "catalog_code": "2c4LdC6",
  "system_success_percent": 0.93,
  "gate_way_id": "7276706129",
  "timestamp": 1527755690000
}



POST /gateway-api-stat*/statInfo/_search
{
  "query": {
  "bool" : {
    "must" : [
      {
        "range" : {
          "timestamp" : {
            "from" : "now-1y/y",
            "to" : "now"
          }
        }
      }
    ]
  }
}
}



POST /gateway-api-stat*/statInfo/_search




PUT _template/dcoos-log
{
  "template":   "dcoos-*", 
      "settings" : {
        "index" : {
            "number_of_shards" : 3, 
            "number_of_replicas" : 1,
            "refresh_interval" : "10s"
        }
    },
"mappings": {
	"log" : {
        "properties" : {
		 "requestId"  :{ "type": "keyword"},
		 "component" : { "type": "keyword"},
          "timestamp" : { "type": "date"},
          "appId" : { "type": "keyword"},
          "apiId" :{ "type": "keyword"},
		  "apiName" :{ "type": "keyword"},  
          "packageId" :{ "type": "keyword"},
          "packageName" :{ "type": "keyword"},
          "basePath" :{ "type": "keyword"},
		  "targetBasePath" : { "type": "keyword"},
		  "targetHost" :{ "type": "keyword"},
		  "targetScheme" :{ "type": "keyword"},
		  "clientIP" :{ "type": "keyword"},
          "gatewayIP" :{ "type": "keyword"},
          "gatewayName" :{ "type": "keyword"},
          "userAgent" :{ "type": "keyword"},
          "requestSize" :{ "type": "integer"},
          "responseSize" :{ "type": "integer"},
          "method" :{ "type": "keyword"},
          "host" :{ "type": "keyword"},
          "uri"  :{ "type": "keyword"},
          "totalTime":{ "type": "integer"},
		   "gatewayResponseTime"  :{ "type": "integer"},
		   "gatewayResponseCode" :{ "type": "keyword"},
		   "gatewayExecTime"  :{ "type": "integer"},
		   "backendResponseTime"  :{ "type": "integer"}, 
		   "backendResponseCode" :{ "type": "keyword"},   
		  "requestReceivedTime"  :{ "type": "integer"},
		  "requestForwardTime"  :{ "type": "integer"},
		  "responseReceivedTime"  :{ "type": "integer"},
		  "responseForwardTime"  :{ "type": "integer"},
		  "businessResponseCode" :{ "type": "keyword"}
        }
	  }
  }
}





PUT _template/gateway-api-stat
{
  "template":   "gateway-api-stat-*", 
      "settings" : {
        "index" : {
            "number_of_shards" : 5, 
            "number_of_replicas" : 1,
            "refresh_interval" : "10s"
        }
    },
"mappings": {
	"statInfo" : {
        "properties" : {
          
   "id":{ "type": "keyword"},
  "api_id": { "type": "keyword"},
  "upload_ api_id":{ "type": "keyword"},
  "consumer_id":{ "type": "keyword"},
  "consumer_name":{ "type": "keyword"},
  "prov_id":{ "type": "keyword"},
  "prov_name":{ "type": "keyword"},
  "use_quantity": { "type": "long"},
  "avg_latency": { "type": "double"},
  "system_success_percent": { "type": "double"},
  "business_success_percent": { "type": "double"},
  "start_dt": { "type": "date"},
  "catalog_code" : {"type" : "keyword"},
  "timestamp" : { "type" : "date"},
  "gate_way_id" :{ "type" :"keyword"}

        }
	  }
  }
}






POST /dcoos_yellow_pages-2018.5/statistics
{
  "id":"test",
  "api_id": "ds_ui9l0iu",
  "upload_ api_id":"gateway_id_14324_321",
  "consumer_id":"dap_JKASD",
  "consumer_name":"consumer_name",
  "prov_id":"fdsafas",
  "prov_name":"test",
  "use_quantity": 1200,
  "avg_latency": 200,
  "system_success_percent": 99.9,
  "business_success_percent": 98.51,
  "start_dt": "2018-05-29T00:10:00.000Z"
}



POST /dcoos_yellow_pages-2018.5/statistics
{
  "id":"test",
  "api_id": "ds_ui9l0iu",
  "upload_ api_id":"gateway_id_14324_321",
  "consumer_id":"dap_JKASD",
  "consumer_name":"consumer_name",
  "prov_id":"fdsafas",
  "prov_name":"test",
  "use_quantity": 1200,
  "avg_latency": 200,
  "system_success_percent": 99.9,
  "business_success_percent": 98.51,
  "start_dt": "2018-05-29T01:10:00.000Z"
}


POST /dcoos_yellow_pages-2018.5/statistics
{
  "id":"",
  "api_id": "ds_ui9l0iu",
  "upload_ api_id":"gateway_id_14324_321",
  "consumer_id":"dap_JKASD",
  "consumer_name":"consumer_name",
  "prov_id":"fdsafas",
  "prov_name":"test",
  "use_quantity": 1200,
  "avg_latency": 200,
  "system_success_percent": 99.9,
  "business_success_percent": 98.51,
  "start_dt": "2018-05-29T09:15:00.000Z"
}




GET /dcoos-*/_search
{
  "query": 
{
  "bool" : {
    "must" : [
      {
        "term" : {
          "apiId" : {
            "value" : 16,
            "boost" : 1.0
          }
        }
      },
      {
        "range" : {
          "timestamp" : {
            "from" : 1527491723063,
            "to" :   1527491723163
          }
        }
      }
    ]
  }
},
"aggs": {
  "histogram": {
    "histogram": {
      "field": "timestamp",
      "interval": 3600
    },
    "aggs": {
      "term": {
        "terms": {
          "field": "uri",
          "size": 10
        },
        "aggs": {
          "avgStat": {
            "avg": {
              "field": "requestSize"
            }
          }
        }
      }
    }
  }
}
}


GET /dcoos-*/_search
{
  "query": 
{
  "bool" : {
    "must" : [
      {
        "term" : {
          "apiId" : {
            "value" : 16,
            "boost" : 1.0
          }
        }
      },
      {
        "range" : {
          "timestamp" : {
            "from" : 1524742021000,
            "to" :   1524742022000
          }
        }
      }
    ]
  }
},
"aggs": {
  "packageId": {
    "terms": {
      "field": "packageId"
    },
    "aggs": {
      "term": {
        "terms": {
          "field": "appId",
          "size": 10
        }
      }
    }
  }
}
}





POST _reindex
{
  "source": {
    "index": "dcoos-%{component}-2018.04.26"
  },
  "dest": {
    "index": "dcoos2-2018.04.26"
  }
}



POST dcoos-test-2018.05.28/log
{
  "timestamp": 1527491733063 ,
"appId": "16", 
"component":"dcoos",
"packageId": "00000015" ,
"packageName":"faff", 
"apiId": 16,  
"apiName": "话费查询",  
"basePath":"/v2", 
"gatewayName":"上海市网关", 
"targetBasePath":"/weather",   
"targetHost":"www.chinatelecom.js.cn",    
"targetScheme":"https",
"clientIP":"192.168.1.1", 
"gatewayIP":"163.79.159.209", 
"userAgent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36", 
"requestSize": 5024,  
"responseSize":5024,   
"method":"GET", 
"host":"dcoos.com",  
"uri":"/apps/cart.jsp?appID=4735",   
"requestURL":"http://dcoos.com/api/get", 
"requestId":"rerqr-sfdsf-redsf-fdsfdsf-sdfds",
"businessCode":"100203",  
"requestBeginTime":1523412000000 ,	
"backendLatency": 278, 
"latency": 46,  
"backendResponseCode":"500", 
"gatewayResponseCode":"500"
}






POST dcoos-dcoos-2018.06.14/log
{
  "timestamp": 1527491820010 ,
"appId": "16", 
"component":"dcoos",
"packageId": "00000015" ,
"packageName":"faff", 
"apiId": 16,  
"apiName": "话费查询",  
"basePath":"/v2", 
"gatewayName":"上海市网关", 
"targetBasePath":"/weather",   
"targetHost":"www.chinatelecom.js.cn",    
"targetScheme":"https",
"clientIP":"192.168.1.1", 
"gatewayIP":"163.79.159.209", 
"userAgent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36", 
"requestSize": 5024,  
"responseSize":5024,   
"method":"GET", 
"host":"dcoos.com",  
"uri":"/apps/cart.jsp?appID=4735",   
"requestURL":"http://dcoos.com/api/get", 
"requestId":"rerqr-sfdsf-redsf-fdsfdsf-sdfds",
"businessCode":"100203",  
"requestBeginTime":1523412000000 ,	
"backendResponseTime": 278, 
"totalTime": 46,  
"backendResponseCode":"500", 
"gatewayResponseCode":"500"

}





DELETE dcoos-100103-2018.04.17
DELETE dcoos-100102-2018.04.17
DELETE dcoos-100101-2018.04.17

GET /dcoos-100104-2018.4.11/log/_search
{
  "query": {
    "bool": {
      "filter": [{ "term": { "component": { "value": "100104"}}},
                 { "term": { "appId": { "value": "app12"}}}],
      "should": [{"terms": {"packageName": ["faff","package"]}}]
      ,"minimum_should_match" : 1
    }
  }
}

GET dcoos-dcoos-*/log/_search
{
  "query": {
  
  "bool" : {
    "must" : [
      {
        "term" : {
          "apiId" : {
            "value" : "13",
            "boost" : 1.0
          }
        }
      },
      {
        "range" : {
          "timestamp" : {
            "from" : 1524646800000,
            "to" : 1524650400000,
            "include_lower" : true,
            "include_upper" : false,
            "boost" : 1.0
          }
        }
      }
    ],
    "disable_coord" : false,
    "adjust_pure_negative" : true,
    "boost" : 1.0
  }
},
"aggs": {
  "agg":{
    "terms" : {
      "field" : "uri",
      "size" : 10,
      "min_doc_count" : 1,
      "shard_min_doc_count" : 0,
      "show_term_doc_count_error" : false
  }
}
  
  
  }
}





GET /dcoos-100104-2018.4.11/_mapping

GET /dcoos-100104-*/_search
{
  "query": {
    "match_all": {}
  }
}

GET /dcoos-100104-2018.4.11/_search
{
  "query": {
    "match": {
      "component": "100105"
    }
  }
}



POST /dcoos-100104-2018.4.10/_delete_by_query
{
  "query": {
    "match": {
      "component": "100105"
    }
  }
}



GET /dcoos-100104-*/_search
{
  "aggs": {
    "agg1": {
      "terms": {
        "field": "backendResponseCode",
        "size": 10
      },"aggs": {
        "agg2": {
          "histogram": {
            "field": "timestamp",
            "interval": 3600
          }
        }
      }
    }
  }
}

GET /dcoos-100104-*/_search
{ 
  "aggs" : {
   "agg":{
     "terms" : {
    "field" : "backendResponseCode",
    "size" : 10,
    "min_doc_count" : 1,
    "shard_min_doc_count" : 0,
    "show_term_doc_count_error" : false,
    "order" : [
      {
        "_count" : "desc"
      },
      {
        "_term" : "asc"
      }
    ]
  },
     "aggregations" : {
       "subHisgram" : {
         "histogram" : {
           "field" : "timestamp",
           "interval" : 3600000,
           "offset" : 0.0,
           "order" : {
             "_key" : "asc"
           },
           "keyed" : false,
           "min_doc_count" : 0
         }
       }
     }
    }
   }
}

DELETE /dcoos-100104-2018.4.11/log/AWLNEaLHx_bLnOkbO3U7


PUT /dcoos-100104-2018.4.11
{
"mappings": {
	"log" : {
        "properties" : {
          "timestamp" : { "type": "date"},
          "appId" : { "type": "keyword"},
          "component" : { "type": "keyword"},
          "packageId" :{ "type": "keyword"},
          "basePath" :{ "type": "keyword"},
          "targetBasePath" : { "type": "keyword"},
          "requestSize" :{ "type": "integer"},
          "responseSize" :{ "type": "integer"},
          "backendResponseCode" :{ "type": "keyword"},
          "gatewayResponseCode" :{ "type": "keyword"},
          "latency" : { "type": "integer"},
          "backendLatency": {"type" : "integer"}
        }
	  }
  }
}


PUT _template/dcoos-log
{
  "template":   "dcoos-*", 
      "settings" : {
        "index" : {
            "number_of_shards" : 5, 
            "number_of_replicas" : 1,
            "refresh_interval" : "10s"
        }
    },
"mappings": {
	"log" : {
        "properties" : {
          "timestamp" : { "type": "date"},
          "appId" : { "type": "keyword"},
          "component" : { "type": "keyword"},
          "packageId" :{ "type": "keyword"},
          "packageName" :{ "type": "keyword"},
          "apiId" :{ "type": "long"},
          "apiName" :{ "type": "keyword"},
          "basePath" :{ "type": "keyword"},
          "gatewayName" :{ "type": "keyword"},
          "targetBasePath" : { "type": "keyword"},
          "targetHost" :{ "type": "keyword"},
          "targetScheme" :{ "type": "keyword"},
          "clientIP" :{ "type": "keyword"},
          "gatewayIP" :{ "type": "keyword"},
          "userAgent" :{ "type": "keyword"},
          "requestSize" :{ "type": "integer"},
          "responseSize" :{ "type": "integer"},
          "method" :{ "type": "keyword"},
          "host" :{ "type": "keyword"},
          "uri"  :{ "type": "keyword"},
          "totalTime":{ "type": "integer"},
          "requestURL"  :{ "type": "keyword"},
          "requestId"  :{ "type": "keyword"},
          "businessCode"  :{ "type": "keyword"},
          "requestBeginTime"  :{ "type": "keyword"},
          "backendResponseCode" :{ "type": "keyword"},
          "gatewayResponseCode" :{ "type": "keyword"},
          "latency" : { "type": "integer"},
          "backendLatency": {"type" : "integer"}
        }
	  }
  }
}



##查询
GET /dcoos-100104-2018.4.10/_search
{
  "query": {
    "range": {
      "timestamp": {
        "lte": "1523350693"
      }
    }
  }
}


PUT /easylog/_settings
{
    "index" : {
        "refresh_interval" : "1s"
    }
}

POST /test/test/1
{
  "name": "john"
}

GET /easylog/logmap/_search?size=100
{
  "query": {
  "range" : {
    "updatedTime" : {
      "from" : 1523172173566,
      "to" : 1523173341204,
      "include_lower" : true,
      "include_upper" : false,
      "boost" : 1.0
    }
  }
  }
}




##获取logmap
GET /easylog/logmap/_search?size=100
{
  "query": {
  "match":{"componentId": "100103"}}
}

GET /easylog/logmap/_search
{
  "query": {
    "match_all": {}
  },
  "size": 100
}

DELETE /easylog/logmap/

POST /easylog/logmap/_delete_by_query
{
  "query": {
      "match":{"componentId": "dcoos"}
  }
}


##alarmConfig
DELETE /easylog/alarmConfig/AWKjBOBCsJllsvxJ6YS9


GET /easylog/alarmConfig/_search
{
  "query": {
    "match_all": {}
  }
}

GET /easylog/alarmConfig/_search
{
  "query": {
    "match": {
      "appId": "100101"
    }
  }
}

GET /easylog/alarmConfig/_search
{
  "query": {
    "bool": {
      "must": [
        {"term": {"isDelete": {"value": "0"}}},
        {"term": {"appId": {"value": "100101"}}
        }
      ]
    }
  }
}


POST /easylog/alarmConfig/_delete_by_query 
{
  "query":{
    "match":{
      "appId":"100104"
    }
  }
}



POST /easylog/alarmConfig/
{

   "appName": "appName1",
   "alarmName":"alarm1",
   "channel":"email",
   "channelList":"196635693@qq.com",
   "templateId":"111",
   "groupBy":"appId",
   "appId": "100104",
  "createdBy": "system",
  "updatedBy": "system",
  "createdTime": 1517991297530,
  "updatedTime": 1517991297530,
  "cepCondition": {
    "aggType": "sum",
    "filterField": "backendResponseTime",
    "relationalOperator": ">=",
    "targetValue": 10000,
    "timeInterval": 10
  },
  "filterCondition": [
    {
      "filterField": "clientIP",
      "logicalOperator": "AND",
      "relationalOperator": "=",
      "targetValue": "192.168.1.1",
      "valueType": "String"
    }
  ]
}






POST /easylog/alarmConfig/
{
 "appId": "100104",
  "isDelete": "0",
  "createdBy": "system",
  "updatedBy": "system",
  "createdTime": 1515737400856,
  "updatedTime": 1517991297530,
  "cepCondition": {
    "aggType": "sum",
    "filterField": "backendResponseTime",
    "relationalOperator": ">=",
    "targetValue": 10000,
    "timeInterval": 10
  },
  "filterCondition": [
    {
      "filterField": "clientIP",
      "logicalOperator": "AND",
      "relationalOperator": "=",
      "targetValue": "192.168.1.1",
      "valueType": "String"
    }
  ]
}




DELETE /easylog/alarmConfig/AWJhpMLrsJllsvxJusas


GET /easylog/logmap/_search
{
  "query": {
    "bool": {
      "must": [
        {
        "match":{
          "componentId": "100104"
          }
        },
        {
          "match": {
            "field":"rawRequest"
          }
        }
        ]
      }
    }
}








DELETE /easylog/alarmConfig/AWFvVGtfsJllsvxJgpaV


PUT /test3

GET /easylog/alarmConfig/_search
{
  "query": {
    "match": {
      "isDelete": "0"
      
    }
  }
}


PUT dcooslog

DELETE testlog

DELETE  /easylog/alarmConfig/AWJg1s9jsJllsvxJupgs

POST /easylog/alarmConfig/AWJg1s9jsJllsvxJupgs
{
   "appId": "100104",
   "templateId": "1",
   "groupBy": "",
   "isDelete": "0",
   "createdBy": "system",
   "updatedBy": "system",
   "createdTime": 1515737400856,
   "updatedTime": 1517991842233,
   "cepCondition": {
     "aggType": "sum",
     "filterField": "message.response.responseTime",
     "relationalOperator": ">=",
     "targetValue": 1000,
     "timeInterval": 30
   },
   "filterCondition": [
     {
       "filterField": "host",
       "logicalOperator": "AND",
       "relationalOperator": "=",
       "targetValue": "192.168.1.1",
       "valueType": "String"
     }
   ]
}


POST _reindex
{
  "source": {
    "index": "twitter"
  },
  "dest": {
    "index": "new_twitter"
  }
}


POST /easylog/alarm


POST /easylog/alarmConfig/AWJg1s9jsJllsvxJupgs
{
          "appId": "100104",
          "cepCondition": {
            "aggType": "count",
            "filterField": "host",
            "relationalOperator": ">=",
            "targetValue": 500,
            "timeInterval": 60
          },
          "createdBy": "system",
          "createdTime": 1522043113007,
          "filterCondition": [
            {
              "filterField": "host",
              "logicalOperator": "AND",
              "relationalOperator": "=",
              "targetValue": "10.142.100.197",
              "valueType": "String"
            }
          ],
          "groupBy": "appKey",
          "isDelete": "0",
          "templateId": "111",
          "updatedBy": "system",
          "updatedTime": 1522043113007
}



POST /easylog/alarmConfig/
{
   "appId": "100102",
   "isDelete": "0",
   "createdBy": "system",
   "updatedBy": "system",
   "createdTime": 1515737400856,
   "updatedTime": 1515737400856,
   "cepCondition": {
     "aggType": "sum",
     "filterField": "message.response.responseTime",
     "relationalOperator": ">=",
     "targetValue": 20000,
     "timeInterval": 10
   },
   "filterCondition": [
     {
       "filterField": "host",
       "logicalOperator": "AND",
       "relationalOperator": "=",
       "targetValue": "192.168.1.2",
       "valueType": "String"
     }
   ]
}





POST /easylog/alarmConfig/
{
   "appId": "100103",
   "isDelete": "0",
   "createdBy": "system",
   "updatedBy": "system",
   "createdTime": 1515737400856,
   "updatedTime": 1515737400856,
   "cepCondition": {
     "aggType": "sum",
     "filterField": "message.response.responseTime",
     "relationalOperator": ">=",
     "targetValue": 5000,
     "timeInterval": 10
   },
   "filterCondition": [
     {
       "filterField": "host",
       "logicalOperator": "AND",
       "relationalOperator": "=",
       "targetValue": "192.168.1.3",
       "valueType": "String"
     }
   ]
}



GET /easylog/logmap/_search/?size=10000
{
  "query": {
    "match_all": {}
  },
  "sort": [
    {
      "componentId.keyword": {"order": "desc"},
      "parentId.keyword":{"order":"desc"}
    }
  ]
}



GET /easylog/logmap/_search
{
  "query": {
    
  }
}

GET /easylog/alarmConfig/_search
{
  "query": {
    "match_all": {}
  }
}

GET /easylog/logmap/_search
{
  "query": {
    "term": {
      "componentId.keyword": "100104"
    }
  },
  "sort": [
    {
      "parentId.keyword": {
        "order": "desc"
      }
    }
  ]
}

DELETE /easylog/logmap/AWHkefFDsJllsvxJnbtx


POST TEST/TEST
{
  "timestamp":150243214324,
  "component":"100104",
  "appKey":"f34a_rJKfdsafd",
  "clientIP":"192.168.1.1",
  "userAgent":"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36",
  "requestSize":256,
  "responseSize":6539,
  "method":"GET",
  "host":"dcoos.com",
  "uri":"/api/get",
  "requestURL":"http://dcoos.com/api/get",
  "backendResponseCode":"500",
  "backendResponseTime":2578,
  "gatewayResponseTime":2898,
  "gatewayResponseCode":"200",
  "gatewayExecTime":323,
  "rawRequest":"2343%2032ffhkshhHJJd32_skjds&kfkjdsafdsdsfdgfd",
  "rawResponse":"4hhskfhdhJGUG34sk%20%ksjfdsjg%se&dsnkfjdgfjjljl"

}



##component100104
PUT /easylog/logmap/41
{
  "field":"timestamp",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/42
{
  "field":"component",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/43
{
  "field":"appId",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}


POST /easylog/logmap/44
{
  "field":"clientIP",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}


PUT /easylog/logmap/45
{
  "field":"userAgent",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/46
{
  "field":"requestSize",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}


PUT /easylog/logmap/47
{
  "field":"responseSize",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/48
{
  "field":"method",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/49
{
  "field":"host",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/410
{
  "field":"uri",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/411
{
  "field":"requestURL",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/412
{
  "field":"backendResponseCode",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}
PUT /easylog/logmap/413
{
  "field":"backendResponseTime",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/414
{
  "field":"gatewayResponseTime",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}
PUT /easylog/logmap/415
{
  "field":"gatewayResponseCode",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/416
{
  "field":"gatewayExecTime",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/417
{
  "field":"rawRequest",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}

PUT /easylog/logmap/418
{
  "field":"rawResponse",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100104"
}


##component100103
PUT /easylog/logmap/1
{
  "field":"timestamp",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/2
{
  "field":"component",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/3
{
  "field":"appId",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}


POST /easylog/logmap/4
{
  "field":"clientIP",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}


PUT /easylog/logmap/5
{
  "field":"userAgent",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/6
{
  "field":"requestSize",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}


PUT /easylog/logmap/7
{
  "field":"responseSize",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/8
{
  "field":"method",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/9
{
  "field":"host",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/10
{
  "field":"uri",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/11
{
  "field":"requestURL",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/12
{
  "field":"backendResponseCode",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}
PUT /easylog/logmap/13
{
  "field":"backendResponseTime",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/14
{
  "field":"gatewayResponseTime",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}
PUT /easylog/logmap/15
{
  "field":"gatewayResponseCode",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/16
{
  "field":"gatewayExecTime",
  "type":"java.lang.Integer",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/17
{
  "field":"rawRequest",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/18
{
  "field":"rawResponse",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

GET /easylog/logmap/_search?size=100

POST /easylog/logmap/
{
  
  "componentId" : "100108",
  "isDelete": "0",
  "createdBy": "system",
  "updatedBy": "system",
  "createdTime": 1515737400856,
  "updatedTime": 1515737400856,
  "fields" :[
        {"field":"timestamp","type":"java.lang.Integer","parentId":"0","parentName":""},
        {"field":"component","type":"java.lang.String", "parentId":"0", "parentName":""},
        {"field":"appId","type":"java.lang.String","parentId":"0","parentName":""},
        {"field":"clientIP","type":"java.lang.String","parentId":"0","parentName":""},
        {"field":"userAgent","type":"java.lang.String","parentId":"0","parentName":""},
        {"field":"requestSize","type":"java.lang.Integer","parentId":"0","parentName":""},
        {"field":"responseSize","type":"java.lang.Integer","parentId":"0","parentName":""},
        {"field":"method","type":"java.lang.String","parentId":"0","parentName":""},
        {"field":"host","type":"java.lang.String","parentId":"0","parentName":""},
        {"field":"uri","type":"java.lang.String","parentId":"0","parentName":""},
        {"field":"requestURL","type":"java.lang.String","parentId":"0","parentName":""},
        {"field":"backendResponseCode","type":"java.lang.String","parentId":"0","parentName":""},
        {"field":"backendResponseTime","type":"java.lang.Integer","parentId":"0","parentName":""},
        {"field":"gatewayResponseTime","type":"java.lang.Integer","parentId":"0","parentName":""},
        {"field":"gatewayResponseCode","type":"java.lang.String","parentId":"0","parentName":""},
        {"field":"gatewayExecTime","type":"java.lang.Integer","parentId":"0","parentName":""},
        { "field":"rawRequest", "type":"java.lang.String", "parentId":"0", "parentName":""},
        {"field":"rawResponse","type":"java.lang.String","parentId":"0","parentName":""}
] 
}








##component100101
PUT /easylog/logmap/11
{
  "field":"host",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100101"
}

PUT /easylog/logmap/12
{
  "field":"component",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100101"
}


PUT /easylog/logmap/13
{
  "field":"message",
  "type":"message",
  "parentId":"0",
  "parentName":"",
  "componentId":"100101"
}

PUT /easylog/logmap/14
{
  "field":"serviceId",
  "type":"java.lang.String",
  "parentId":"13",
  "parentName":"message",
  "componentId":"100101"
}

PUT /easylog/logmap/15
{
  "field":"request",
  "type":"request",
  "parentId":"13",
  "parentName":"message",
  "componentId":"100101"
}

PUT /easylog/logmap/16
{
  "field":"response",
  "type":"response",
  "parentId":"13",
  "parentName":"message",
  "componentId":"100101"
}

PUT /easylog/logmap/17
{
  "field":"requestTime",
  "type":"java.lang.Integer",
  "parentId":"15",
  "parentName":"request",
  "componentId":"100101"
}

PUT /easylog/logmap/18
{
  "field":"responseTime",
  "type":"java.lang.Integer",
  "parentId":"16",
  "parentName":"response",
  "componentId":"100101"
}




##component 100102

PUT /easylog/logmap/21
{
  "field":"host",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100102"
}

PUT /easylog/logmap/22
{
  "field":"component",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100102"
}


PUT /easylog/logmap/23
{
  "field":"message",
  "type":"message",
  "parentId":"0",
  "parentName":"",
  "componentId":"100102"
}

PUT /easylog/logmap/24
{
  "field":"serviceId",
  "type":"java.lang.String",
  "parentId":"23",
  "parentName":"message",
  "componentId":"100102"
}

PUT /easylog/logmap/25
{
  "field":"request",
  "type":"request",
  "parentId":"23",
  "parentName":"message",
  "componentId":"100102"
}

PUT /easylog/logmap/26
{
  "field":"response",
  "type":"response",
  "parentId":"23",
  "parentName":"message",
  "componentId":"100102"
}

PUT /easylog/logmap/27
{
  "field":"requestTime",
  "type":"java.lang.Integer",
  "parentId":"25",
  "parentName":"request",
  "componentId":"100102"
}

PUT /easylog/logmap/28
{
  "field":"responseTime",
  "type":"java.lang.Integer",
  "parentId":"26",
  "parentName":"response",
  "componentId":"100102"
}



##component100103配置

PUT /easylog/logmap/31
{
  "field":"host",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/32
{
  "field":"component",
  "type":"java.lang.String",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}


PUT /easylog/logmap/33
{
  "field":"message",
  "type":"message",
  "parentId":"0",
  "parentName":"",
  "componentId":"100103"
}

PUT /easylog/logmap/34
{
  "field":"serviceId",
  "type":"java.lang.String",
  "parentId":"33",
  "parentName":"message",
  "componentId":"100103"
}

PUT /easylog/logmap/35
{
  "field":"request",
  "type":"request",
  "parentId":"33",
  "parentName":"message",
  "componentId":"100103"
}

PUT /easylog/logmap/36
{
  "field":"response",
  "type":"response",
  "parentId":"33",
  "parentName":"message",
  "componentId":"100103"
}

PUT /easylog/logmap/37
{
  "field":"requestTime",
  "type":"java.lang.Integer",
  "parentId":"35",
  "parentName":"request",
  "componentId":"100103"
}

PUT /easylog/logmap/38
{
  "field":"responseTime",
  "type":"java.lang.Integer",
  "parentId":"36",
  "parentName":"response",
  "componentId":"100103"
}









GET /easylog/logmap/_search
{
  "query": {
    "match_all": {}
  },
  "sort": [
    {
      "parentId.keyword": {
        "order": "desc"
      }
    }
  ]
}


GET /document/api/513

POST /document/_search
{
  "query": {
    "match_all": {}
  }
}

PUT /test/type/1
{
  "name":"test"
}


GET /test/type/1

GET /document/_search
{
  "query": {
    "match_all": {}
  }
}



GET /document/api/501



PUT  /openapi*/_settings
{

     "index.routing.allocation.include.zone": "hot"
 
}

GET  /shopfront11/_search
{
  "query":{
    "match_all": {}
  }
}

POST /easylog/app/_search
{
  "query": {
    "match_all": {
    }
  }
}

PUT  / */_settings
{

     "index.routing.allocation.include.zone": "stale"
 
}

GET /nn_log-2017.11.24/_settings

GET /nn_log-2017.11.23/_stats



GET /document/_search
{
  "query": {
    "query_string": {
      "query": "content:互联网"
    }
  }
}


GET /easylog-100101-*/_search
{  
  "query": {
    "query_string": {
      "analyze_wildcard": true,
      "query": "session"
    }
  },
  "highlight": {
    "fields": {
      "*": {}
    },
    "require_field_match": false
  }
}


GET /easylog-100101-*/_search
{
    "query" : {
      "query_string": {
        "query": "*"
      }
    }
}


GET _template/nn_log

POST /easylog/_search
{
  "query": {
    "match_all": {}
  }
}



POST /easylog/browse/_search
{
  "query": {
    "match_all": {}
  }
}


DELETE  /easylog/browse/AV_Ii-hlsLApkuDUiQC7



POST /easylog-100101-*/_search?scroll=5m
{
  "query": {
    "bool": {
      "must" : [
        { "term": {"hostname.keyword": {"value": "NM-304-HW-XH628V3-BIGDATA-083"}}},
        { "term": {"level.keyword": {"value": "INFO"}}},
        { "query_string" : { "query": "*" } },
        { "range": { "@timestamp": {  "gte": "2017-11-17 10:00:00","lte": "2017-11-21 10:30:00"                                             ,"format": "yy-MM-dd HH:mm:ss", "time_zone": "-08:00"} } }
      ]
    }
  },
  "sort": [
    {
      
      "@timestamp": {
        "order": "desc"
      }
    }
  ]
  
}



POST /_search/scroll
{
  "scroll":"5m",
  "scroll_id": "DnF1ZXJ5VGhlbkZldGNoLQAAAAAAKLcsFnliVEQ0SUJQU2F5clN1czZCRExtZncAAAAAAAQs0RYwUUdfOU0yUlRHLUVaSmMxclFDM3B3AAAAAAACOqUWb25veTF0SlRRTmllNGY0QkFMSHBQQQAAAAAAKLctFnliVEQ0SUJQU2F5clN1czZCRExtZncAAAAAAAIaJBZBd1lWZk5BcFN4Q0dBLUpBYlU2cDhBAAAAAAAoty4WeWJURDRJQlBTYXlyU3VzNkJETG1mdwAAAAAAKLcvFnliVEQ0SUJQU2F5clN1czZCRExtZncAAAAAAAQs0hYwUUdfOU0yUlRHLUVaSmMxclFDM3B3AAAAAAAotzEWeWJURDRJQlBTYXlyU3VzNkJETG1mdwAAAAAAJTvKFkpMTW5vSE93UVdlUXc3cTNHenR2YkEAAAAAACi3MBZ5YlRENElCUFNheXJTdXM2QkRMbWZ3AAAAAAAotzIWeWJURDRJQlBTYXlyU3VzNkJETG1mdwAAAAAAKLc0FnliVEQ0SUJQU2F5clN1czZCRExtZncAAAAAACi3MxZ5YlRENElCUFNheXJTdXM2QkRMbWZ3AAAAAAACOqYWb25veTF0SlRRTmllNGY0QkFMSHBQQQAAAAAAJTvLFkpMTW5vSE93UVdlUXc3cTNHenR2YkEAAAAAAAQs0xYwUUdfOU0yUlRHLUVaSmMxclFDM3B3AAAAAAAotzUWeWJURDRJQlBTYXlyU3VzNkJETG1mdwAAAAAAJTvMFkpMTW5vSE93UVdlUXc3cTNHenR2YkEAAAAAAAI6pxZvbm95MXRKVFFOaWU0ZjRCQUxIcFBBAAAAAAAELNQWMFFHXzlNMlJURy1FWkpjMXJRQzNwdwAAAAAABCzWFjBRR185TTJSVEctRVpKYzFyUUMzcHcAAAAAAAI6qBZvbm95MXRKVFFOaWU0ZjRCQUxIcFBBAAAAAAAELNUWMFFHXzlNMlJURy1FWkpjMXJRQzNwdwAAAAAABCzXFjBRR185TTJSVEctRVpKYzFyUUMzcHcAAAAAAAI6qRZvbm95MXRKVFFOaWU0ZjRCQUxIcFBBAAAAAAAlO80WSkxNbm9IT3dRV2VRdzdxM0d6dHZiQQAAAAAABCzYFjBRR185TTJSVEctRVpKYzFyUUMzcHcAAAAAAAIaJhZBd1lWZk5BcFN4Q0dBLUpBYlU2cDhBAAAAAAACGiUWQXdZVmZOQXBTeENHQS1KQWJVNnA4QQAAAAAAAjqqFm9ub3kxdEpUUU5pZTRmNEJBTEhwUEEAAAAAACU7zhZKTE1ub0hPd1FXZVF3N3EzR3p0dmJBAAAAAAACGicWQXdZVmZOQXBTeENHQS1KQWJVNnA4QQAAAAAAAhooFkF3WVZmTkFwU3hDR0EtSkFiVTZwOEEAAAAAACU7zxZKTE1ub0hPd1FXZVF3N3EzR3p0dmJBAAAAAAAELNkWMFFHXzlNMlJURy1FWkpjMXJRQzNwdwAAAAAAAhopFkF3WVZmTkFwU3hDR0EtSkFiVTZwOEEAAAAAAAI6rBZvbm95MXRKVFFOaWU0ZjRCQUxIcFBBAAAAAAACGioWQXdZVmZOQXBTeENHQS1KQWJVNnA4QQAAAAAAAjqrFm9ub3kxdEpUUU5pZTRmNEJBTEhwUEEAAAAAAAQs2xYwUUdfOU0yUlRHLUVaSmMxclFDM3B3AAAAAAACGisWQXdZVmZOQXBTeENHQS1KQWJVNnA4QQAAAAAAKLc2FnliVEQ0SUJQU2F5clN1czZCRExtZncAAAAAACU70BZKTE1ub0hPd1FXZVF3N3EzR3p0dmJBAAAAAAAELNoWMFFHXzlNMlJURy1FWkpjMXJRQzNwdw=="
}



POST /easylog/app/_search
{
  "query": {
    "match_all" : {
    "boost" : 1.0
    }  
  } 
}


POST /easylog-100101-*/_search
{
  "query": {
    "query_string": {
      "query": "hostname:NM-304-HW-XH628V3-BIGDATA-083 AND   info:Session "
    }
  } 
}




GET  /easylog/app/_search
{
  "query": {
    "ids": {
      "type": "app",
      "values": ["AV-zMLgGsLApkuDUg_TN"]
    }
  }
}

DELETE /easylog/app/AV5bIcs6sLApkuDURMtH


GET /easylog/browse/_search
{
  "query": {
 
    "bool" : {
      "must" : [
        {
          "wildcard" : {
            "appId" : {
              "wildcard.keyword" : "100100",
              "boost" : 1.0
            }
          }
        }
      ],
      "disable_coord" : false,
      "adjust_pure_negative" : true,
      "boost" : 1.0
    }
  }
}


GET /easylog/browse/_search
{
  "query": {
    "match_all": {
      
    }
  }
}



DELETE /easylog/browse/AV-k4ApUsLApkuDUgGxl
DELETE /easylog/browse/AV-kGWTbsLApkuDUgDVj
DELETE /easylog/browse/AV-kp4t2sLApkuDUgFxI
DELETE /easylog/browse/AV-0NWnNsLApkuDUhDV8





GET /easylog/browse/_search
{
    "query": {
        "wildcard" : { "appId.keyword" : "*" }
    }
}

GET /easylog/browse/_search
{
    "query": {
        "wildcard" : { "browseConf.appId.keyword" : "*1001*" }
    }
}


GET /easylog/browse/_search
{
  "query": {
    "match_all": {}
  }
}

DELETE /easylog/browse/1234df


GET /easylog/browse/_search?size=20


GET /easylog/browse/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "match": {
            "browseGroup": "openapi"
          }
        },
        {
          "match": {
            "appInfo.appName": "openapitest"
          }
        }
      ]
    }
  }
}



GET /openapi/_search
{
    "query": {
        "range" : {
            "@timestamp" : {
                "gte" : "now-5m/m",
                "lt" :  "now/m"
            }
        }
    },
    "aggs" : {
        "articles_over_time" : {
            "date_histogram" : {
                "field" : "@timestamp",
                "interval" : "1s"
            }
        }
    }
}




GET /openapi/_search
{
    "query": {
        "range" : {
            "@timestamp" : {
                "gte" : "now-5m/m",
                "lt" :  "now/m"
            }
        }
    },
    "aggs" : {
        "articles_over_time" : {
          "terms": {
            "field": "host.keyword",
            "size": 10
          },
          "aggs": {
            "datahist": {
              "date_histogram": {
                "field": "@timestamp",
                "interval": "1m"
              }
            }
          }
        }
    }
}







POST /easylog/app/
{
    "userName": "easylog_user_1",
    "appName": "openapi"
}


POST /easylog/app/
{
    "userName": "easylog_user_1",
    "appName": "docker"
}



GET /easylog/browse/_search?size=100

DELETE /easylog/browse/AV8AD1VTsLApkuDU7AmP



PUT /easylog/browse/1234df
{
  "browseName": "test",
          "browseDesc": "dockertest",
          "browseGroup": "docker",
          "appInfo": {
            "appId": "342341sdf",
            "appName": "openapi"
          },
          "browseConf": {
            "timeType": 2,
            "beginTime": "2017-09-08 17:00:00",
            "endTime": "2017-09-08 18:00:00",
            "selectedFields": [
              "@timestamp",
              "host",
              "source",
              "info"
            ],
            "unSelectedFields": [
              "message"
            ],
            "searchInfo": "info",
            "host": "ALL"
          },
          "linkUrl": "http://10.142.10.1234/easylog/linkUrl/23s41s2ds",
          "createdTime": "2017-09-04 17:13:00",
          "createdBy": "easylog_user_1",
          "updatedTime": "2017-09-04 17:13:00",
          "updatedBy": "easylog_user_1"
  
}
        



POST /easylog/browse/
{
    "browseName": "dockertest",
    "browseDesc": "docker",
    "browseGroup": "docker",
    "appInfo": {
      "appId": "342341sdf",
      "appName": "openapitest"
    },
    "browseConf":{
      "timeType": 1,
      "beginTime": "now-15m/m",
      "endTime":  "now",
      "refreshInfo": 
      {
        "refreshTime": 15,
        "timeUnit": "s"
      },
      "selectedFields": ["@timestamp","host","source","info"],
      "unSelectedFields":["message"],
      "searchInfo": "info",
      "host": "ALL"
    },
    "linkUrl": "http://10.142.10.1234/easylog/linkUrl/23s41s2ds",
    "createdTime": "2017-09-04 17:13:00",
    "createdBy": "easylog_user_1",
    "updatedTime": "2017-09-04 17:13:00",
    "updatedBy": "easylog_user_1"
}



POST /easylog/browse/
{
    "browseName": "openapitest",
    "browseDesc": "openapi info search",
    "browseGroup": "openapitest",
    "appInfo": {
      "appId": "342341sdf",
      "appName": "openapi"
    },
    "browseConf":{
      "timeType": 2,
      "beginTime": "2017-09-08 15:00:00",
      "endTime":  "2017-09-08 18:00:00",
      "selectedFields": ["@timestamp","host","source","info"],
      "unSelectedFields":["message"],
      "searchInfo": "info",
      "host": "ALL"
    },
    "linkUrl": "http://10.142.10.1234/easylog/linkUrl/23s41s2ds",
    "createdTime": "2017-09-04 17:13:00",
    "createdBy": "easylog_user_1",
    "updatedTime": "2017-09-04 17:13:00",
    "updatedBy": "easylog_user_1"
}



POST /easylog/browse/23s32dff
{
    "browseName": "openapi_info_log11",
    "browseDesc": "openapi info search",
    "browseGroup": "openapi",
    "appInfo": {
      "appId": "342341sdf",
      "appName": "openapi"
    },
    "browseConf":{
      "timeType": 2,
      "beginTime": "2017-09-08 17:00:00",
      "endTime":  "2017-09-08 18:00:00",
      "selectedFields": ["@timestamp","host","source","info"],
      "unSelectedFields":["message"],
      "searchInfo": "info",
      "host": "ALL"
    },
    "linkUrl": "http://10.142.10.1234/easylog/linkUrl/23s41s2ds",
    "createdTime": "2017-09-04 17:13:00",
    "createdBy": "easylog_user_1",
    "updatedTime": "2017-09-04 17:13:00",
    "updatedBy": "easylog_user_1"
}

POST /easylog/browse/23d2023
{
    "browseName": "openapi_info_log11",
    "browseDesc": "openapi info search",
    "browseGroup": "openapi",
    "appInfo": {
      "appId": "342341sdf",
      "appName": "openapi"
    },
    "browseConf":{
      "timeType": 2,
      "beginTime": "2017-09-08 08:00:00",
      "endTime":  "2017-09-08 18:00:00",
      "selectedFields": ["@timestamp","host","source","info"],
      "unSelectedFields":["message"],
      "searchInfo": "info",
      "host": "ALL"
    },
    "linkUrl": "http://10.142.10.1234/easylog/linkUrl/23s41s2ds",
    "createdTime": "2017-09-04 17:13:00",
    "createdBy": "easylog_user_1",
    "updatedTime": "2017-09-04 17:13:00",
    "updatedBy": "easylog_user_1"
}



POST /easylog/browse/23s41s201
{
    "browseName": "openapi_info_log01",
    "browseDesc": "openapi info search",
    "browseGroup": "openapi",
    "appInfo": {
      "appId": "342341sdf",
      "appName": "openapi"
    },
    "browseConf":{
      "beginTime": "now-15m/m",
      "endTime":  "now",
      "refreshInfo":
      {
        "refreshTime": 15,
        "timeUnit": "s"
      },
      "selectedFields": ["@timestamp","host","source","info"],
      "unSelectedFields":["message"],
      "searchInfo": "info",
      "host": "ALL"
    },
    "linkUrl": "http://10.142.10.1234/easylog/linkUrl/23s41s2ds",
    "createdTime": "2017-09-04 17:13:00",
    "createdBy": "easylog_user_1",
    "updatedTime": "2017-09-04 17:13:00",
    "updatedBy": "easylog_user_1"
}



POST /easylog/browse/5354s41s2ds
{
    "browseName": "openapi_info_log2",
    "browseDesc": "openapi info search",
    "browseGroup": "openapi",
    "appInfo": {
      "appId": "342341sdf",
      "appName": "openapi"
    },
    "browseConf":{
      "beginTime": "2017-06-26T08:03:33.265Z",
      "endTime":  "2017-06-26T08:13:33.265Z",
      "selectedFields": ["host","time","info"],
      "unSelectedFields":["source","level"],
      "searchInfo": "info",
      "host": "ALL"
    },
    "linkUrl": "http://10.142.10.1234/easylog/linkUrl/23s41s2ds",
    "createdTime": "2017-09-01T08:01:45.462Z",
    "createdBy": "easylog_user_1",
    "updatedTime": "2017-09-01T08:01:45.462Z",
    "updatedBy": "easylog_user_1"
}






DELETE /easylog/browse/5354s41s2ds




GET /easylog/browse/_search
{
  "query": {
    "match_all": {}
  }
}




POST /easylog/browse/23s41s2ds
{
  
}


GET  openapi/_search
{
  "query": {
    "match_all": {}
  }
}


GET openapi/_search
{
    "query": {
        "range" : {
            "@timestamp" : {
                "gte" : "now-5m/m",
                "lt" :  "now/m"
            }
        }
    }
}

GET easylog/_mapping

PUT easylog

POST easylog/user/_search
{
  "query": {
    "match_all": {}
  }
  
}

DELETE  easylog


POST /easylog/user
{
  "name":"user1",
  "passwd":"passwd1",
  "phone_num":13805221220,
  "address":"add1"
}



GET /user/1?index=easylog

GET easylog/test/_search
{
  "query":{
    "match": {
      "para1": "test"
    }
  }
}

PUT easylog/test/4
{
  "para1":"test1"
}

GET  openapi/_search
{
  "query":{
    "match": {
      "info": "eureka"
    }
  }
}

PUT /my_index
{
    "mappings": {
        "blog_post": {
            "properties": {
                "name": {
                    "type": "keyword"
                }
            }
        },
        "blog_tag": {
            "_parent": {
                "type": "blog_post"
            },
            "_routing": {
                "required": true
            }
        }
    }
}

PUT /my_index/blog_post/1
{
  "name":"blog_post1"
}

GET /my_index/blog_post/1
{
  
}

PUT /my_index/blog_tag/1?parent=1
{
 "name": "tag1"
}


GET /my_index/_search
{
    "query": {
        "parent_id" : {
            "type" : "blog_tag",
            "id" : "1"
        }
    }
}



GET /my_index/_search
{
    "query": {
        "parent_id" : {
            "type" : "blog_tag",
            "id" : "1"
        }
    }
}

PUT test_1     
PUT test_2   
POST /_aliases
{
    "actions" : [
        { "add":  { "index": "test_2", "alias": "test_1" } },
        { "remove_index": { "index": "test_1" } }  
    ]
}



GET /nn_log-2017.07.04/_mapping

PUT /alias_test

POST /_aliases
{
    "actions" : [
        { "add":  { "index": "nn_log-2017.07.04", "alias": "alias_test" } },
        { "remove_index": { "index": "nn_log-2017.07.04" } }  
    ]
}


PUT  /my_index
{
  "settings" : {
    "index" : {
      "number_of_shards" : 5, 
      "number_of_replicas" : 0,
      "refresh_interval" : "30s"
    },
  "index.routing.allocation.include.zone": "light"
  },
  "mappings": {
    "my_type": {
      "properties": {
        "my_filed_0": {
          "type": "keyword" 
        }
      }
    }
  }
}

GET /my_index/_mapping

GET /my_index/_settings






PUT testljy/_settings
{
  "index.routing.allocation.include.zone": "hot"
}

DELETE  /nn*

PUT _cluster/settings
{ 
  "persistent": { 
        "cluster.routing.allocation.enable": "none" }
}


PUT _cluster/settings
{

  "persistent": {

    "cluster.routing.allocation.enable": "all"

  }

}

POST _flush/synced



GET msisdn/_mapping

GET msisdn/_search
{
   "query": {
    "match": {
      "msisdn": "17733195275"
    }
  },
  "sort": [
    {
      "start_time": {
        "order": "desc"
      }
    }
  ],
  "from" : 0, "size" : 1
}

GET  msisdn/_search
{
  "query": {
    "match": {
      "msisdn": "17733195275"
    }
  },
  "sort": [
    {
      "start_time": {
        "order": "desc"
      }
    }
  ],
  "from" : 0, "size" : 1
}


PUT  /testmusic

GET /testmusic



PUT /twitter/tweet/2
{
    "user": "tom",
    "post_date": "2016-11-15T14:12:12",
    "message": "trying out Elasticsearch"
}

##add new field
POST /twitter/tweet/2/_update
{
    "doc" : {
        "new_field" : "new_field_value"
    }
}
##delete field
POST /twitter/tweet/2/_update
{
    "script" : "ctx._source.remove(\"new_field\")"
}

POST /twitter/tweet/2/_update
{
    "script" : {
        "inline": "ctx._source.new_field = params.new_field_value",
        "lang": "painless",
        "params" : {
            "new_field_value" : "new_field_value2"
        }
    }
}



POST /_cluster/reroute
{

    "commands" : [ {

        "move" :

            {

              "index" : "test", "shard" : 3,

              "from_node" : "node-22", "to_node" : "node-23"

            }

        }
    ]

}


POST /_cluster/reroute
{

    "commands" : [ 

        {

          "allocate_replica" : {

              "index" : "test", "shard" : 1, "node" : "node-22"

          }

        }

    ]

}


PUT /esdocpressuretest
{
    "settings" : {
        "index" : {
            "number_of_shards" : 5, 
            "number_of_replicas" : 1
        }
    }
}




POST /esdocpressuretest/_search
{
  "query":{
    "match_all": {}
  }
}


 DELETE  	nn_log-201



GET /test_nest/13897847933/20170321


POST /test_nest/13897847933/20170321/_update
{
  "script": "ctx._source.location += new_location",
  "params" : {
    "new_location" : {"lat" : "130", "lon":"50"}
  }
}


PUT /test_nest/13897847933/20170321
{
  "location":
    [
      {
      "lat":"131",
      "lon":"132"
    },
    {
      "lat":"21",
      "lon":"23"
    }
    ]
  
}


POST /test_nest/13897847933/20170321/_update
{
  "doc":{
  "location":
    [
      {
      "lat":"132",
      "lon":"133"
    },
    {
      "lat":"21",
      "lon":"23"
    }
    ]
  }
}

PUT my_index/my_type/1/
{
  "group" : "fans",
  "user" : [ 
    {
      "first" : "John",
      "last" :  "Smith"
    },
    {
      "first" : "Alice",
      "last" :  "White"
    }
  ]
}


POST test/type1/1/_update
{
    "doc" : {
        "name" : "new_name"
    }
}

POST /test_nest/13897847933/20170321/_update
{
    "script" : {
        "inline": "ctx._source.location += params.newlocation", 
        "lang": "painless",
        "params" : {
          "newloaction":{
              "lon" : 42,
              "lat" : 32
        }
        }
    }
}



DELETE  my_index

PUT my_index
{
  "mappings": {
    "my_type": {
      "properties": {
        "location": {
          "type": "nested" 
        }
      }
    }
  }
}


PUT my_index/my_type/1
{
  "location" : [ 
    {
      "lat" : "123",
      "lon" : "21"
    },
    {
      "lat" : "234",
      "lon" : "23"
    }
  ]
}


GET my_index/my_type/1



POST my_index/my_type/1/_update
{
    "script" : {
        "inline": "ctx._source.location.add(params.new[0])",
        "lang": "painless",
        "params" : {
            "new" : [{"lat": "100","lon" :"24"}]
        }
    }
}




PUT my_index3

PUT my_index3/my_type/1
{
  "location" : [ 
    {
      "lat" : "123"
    },
    {
      "lat" : "234"
    }
  ]
}

GET my_index3/my_type/1

POST my_index3/my_type/1/_update
{
    "script" : {
        "inline": "ctx._source.location.add(params.new[0])",
        "lang": "painless",
        "params" : {
            "new" : [{"lat": "123","lon" :"24"}]
        }
    }
}

GET my_index3/_mapping

GET my_index/_mapping

GET my_index3/_search
{
  "query": {
    "bool": {
      "must": [
        { "match": { "location.lat": "123" }}
      ]
    }
  }
}

GET my_index3/_search
{
  "query": {
    "nested": {
      "path": "location",
      "query": {
        "bool": {
          "must": [
            { "match": { "location.lat": "123" }}
          ]
        }
      }
    }
  }
}

GET my_index/my_type/1

GET my_index/_search
{
  "query": {
    "nested": {
      "path": "location",
      "query": {
        "bool": {
          "must": [
            { "match": { "location.lat": "100" }},
            { "match": { "location.lon": "24" }}
          ]
        }
      }
    }
  }
}


PUT my_index4/my_type/1
{
  "location" : [ 
    {
      "lat" : "123",
      "lon" : "21"
    },
    {
      "lat" : "234",
      "lon" : "23"
    }
  ]
}
GET my_index4/my_type/1

GET my_index4/_search
{
  "query": {
        "bool": {
          "must": [
            { "match": { "location.lat": "123" }}
          ]
        }
  }
}

POST my_index4/my_type/1/_update
{
    "script" : {
        "inline": "ctx._source.location.add(params.new[0])",
        "lang": "painless",
        "params" : {
            "new" : [{"lat": "123","lon" :"24"}]
        }
    }
}


DELETE  /my_index




PUT my_index
{
  "mappings": {
    "1": {
      "properties": {
        "location": {
          "type": "nested" 
        }
      }
    },
    "2": {
      "properties": {
        "location": {
          "type": "nested" 
        }
      }
    }
  }
}


GET /my_index/_mapping







PUT _cluster/settings 
{ 
  "persistent": { 
        "cluster.routing.allocation.enable": "none" }
}




POST _flush/synced




PUT _cluster/settings
{
  "persistent": {
    "cluster.routing.allocation.enable": "all"
  }
}


GET  /msisdn/_search
{
  "query": {
    "match": {
      "msisdn": "17733195275"
    }
  },
  "sort": [
    {
      "start_time": {
        "order": "desc"
      }
    }
  ],
  "from" : 0, "size" : 1
}


GET /ls-3-2017.05.20/_mapping

PUT /ls-3-2017.05.20/_mapping/_song
{
  "msisdn": {
    "fielddata": {
      "loading" : "eager" 
    }
  }
}




DELETE /music

PUT /music/_mapping/_song
{
  "tags": {
    "type": "string",
    "fielddata": {
      "loading" : "eager" 
    }
  }
}

PUT  music/rock/1
{
  "name":"someone like you"
}


GET music/_mapping

PUT music/_mapping/type_one?update_all_types 
{
  "properties": {
    "name": {
      "type": "text",
      "analyzer": "standard",
      "search_analyzer": "whitespace"
    }
  }
}


PUT my_index/_mapping/type_one?update_all_types 
{
  "properties": {
    "text1": {
      "type": "text",
      "analyzer": "standard",
      "search_analyzer": "whitespace"
    }
  }
}


PUT music/_mapping/test
{
  "properties": {
    "AppName": {
      "type": "string", 
      "index" : "not_analyzed",
      "fielddata": {
        "loading" : "eager" 
      }
    }
  }
}

GET music/_mapping/_all



DELETE _template/wzfw3

 PUT _template/wzfw3
{
  "template":   "ls-3*", 
      "settings" : {
        "index" : {
            "number_of_shards" : 8, 
            "number_of_replicas" : 1,
            "refresh_interval" : "30s"
        }
    },
  "mappings": {
	"morning" : {
        "properties" : {
          "hours" : {
			      "type": "integer"
          },
          "prov" : {
			      "type": "integer"
          },
          "zip_code" : {
			      "type": "integer"
          },
          "city" : {
			      "type": "long"
          },
          "time_flag" : { 
			      "type": "keyword"
          },
          "msisdn":{
            "type": "text", 
            "index" : "not_analyzed",
            "fielddata": {
              "loading" : "eager" 
            }
          },
          "data_source":
          {
            "type": "keyword"
          },
          "start_time":{
            "type": "date"
          },
          "loc":{
            "type": "geo_point"
          },
          "ymd":{
            "type": "keyword"
          }
        }
      },
      	"afternoon" : {
        "properties" : {
          "hours" : {
			      "type": "integer"
          },
          "prov" : {
			      "type": "integer"
          },
          "zip_code" : {
			      "type": "integer"
          },
          "city" : {
			      "type": "long"
          },
          "time_flag" : { 
			      "type": "keyword"
          },
          "msisdn":{
            "type": "keyword"
          },
          "data_source":
          {
            "type": "keyword"
          },
          "start_time":{
            "type": "date"
          },
          "loc":{
            "type": "geo_point"
          },
          "ymd":{
            "type": "keyword"
          }
        }
      },
      
      "night" : {
        "properties" : {
          "hours" : {
			      "type": "integer"
          },
          "prov" : {
			      "type": "integer"
          },
          "zip_code" : {
			      "type": "integer"
          },
          "city" : {
			      "type": "long"
          },
          "time_flag" : { 
			      "type": "keyword"
          },
          "msisdn":{
            "type": "keyword"
          },
          "data_source":
          {
            "type": "keyword"
          },
          "start_time":{
            "type": "date"
          },
          "loc":{
            "type": "geo_point"
          },
          "ymd":{
            "type": "keyword"
          }
        }
      }
    }
}



PUT ls-3-2017.06.09/morning/1
{
   "loc": "36.021057,103.95022",
   "hours": "08",
   "city": "86201",
   "time_frame": "morning",
   "zip_code": "931",
    "data_source": "sms",
    "start_time": "2017-06-02T08:10:23.000Z",
    "ymd": "2017.06.02",
    "time_flag": "work",
    "msisdn": "15337080167",
    "prov": "862"
}

GET /ls-3-2017.06.09/_mapping

DELETE  music




PUT ls-3-2017.06.09/_mapping/morning
{
  "properties": {
    "msisdn": {
      "type": "string", 
      "index" : "not_analyzed",
      "fielddata": {
        "loading" : "eager" 
      }
    }
  }
}



DELETE  music

#create index 
PUT music 
{
  "mappings": {
    "fashion": {
      "properties": {
        "music_name": {
          "type": "keyword"
        }
      }
    }
  }
}

GET music/_mapping

PUT music/fashion/1
{
  "music_name":"someone like you"
}

GET music/_mapping

PUT music/_mapping/fashion
{
  "properties": {
    "music_name": {
      "type": "string",
      "index" : "not_analyzed",
      "fielddata": {
        "loading" : "eager" 
      }
    }
  }
}

GET music/_mapping

PUT music/_mapping/fashion?update_all_types
{
  "properties": {
    "music_name": {
      "type": "string",
      "index" : "not_analyzed",
      "fielddata": {
        "loading" : "eager" 
      }
    }
  }
}

PUT music 
{
  "mappings": {
    "fashion": {
      "properties": {
        "music_name": {
          "type": "text",
          "fielddata": {
        }
      }
    }
  }
}
}
```

