.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = true

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mForRestore:Z

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 77
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 82
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 67
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 72
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 2161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/mms/pdu/PduParser;->mForRestore:Z

    .line 99
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 100
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 37
    .parameter "headers"

    .prologue
    .line 1915
    if-nez p0, :cond_0

    .line 1916
    const/16 v35, 0x0

    .line 2153
    :goto_0
    return v35

    .line 1920
    :cond_0
    const/16 v35, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 1923
    .local v8, messageType:I
    const/16 v35, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 1924
    .local v9, mmsVersion:I
    if-nez v9, :cond_1

    .line 1926
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: PDU hasn\'t mmsVersion"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    const/16 v35, 0x0

    goto :goto_0

    .line 1931
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 2149
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: Parser doesn\'t support this message type in this version"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    const/16 v35, 0x0

    goto :goto_0

    .line 1934
    :pswitch_0
    const/16 v35, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1935
    .local v34, srContentType:[B
    if-nez v34, :cond_13

    .line 1936
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_SEND_REQ PDU hasn\'t content type field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const/16 v35, 0x0

    goto :goto_0

    .line 1958
    .end local v34           #srContentType:[B
    :pswitch_1
    const/16 v35, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 1959
    .local v32, scResponseStatus:I
    if-nez v32, :cond_2

    .line 1960
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_SEND_CONF PDU hasn\'t Response-Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const/16 v35, 0x0

    goto :goto_0

    .line 1965
    :cond_2
    const/16 v35, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 1966
    .local v33, scTransactionId:[B
    if-nez v33, :cond_13

    .line 1967
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_SEND_CONF PDU hasn\'t Transaction-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/16 v35, 0x0

    goto :goto_0

    .line 1974
    .end local v32           #scResponseStatus:I
    .end local v33           #scTransactionId:[B
    :pswitch_2
    const/16 v35, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 1975
    .local v10, niContentLocation:[B
    if-nez v10, :cond_3

    .line 1976
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Content-Location field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 1981
    :cond_3
    const/16 v35, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v11

    .line 1982
    .local v11, niExpiry:J
    const-wide/16 v35, -0x1

    cmp-long v35, v35, v11

    if-nez v35, :cond_4

    .line 1983
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Expiry field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 1988
    :cond_4
    const/16 v35, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v13

    .line 1989
    .local v13, niMessageClass:[B
    if-nez v13, :cond_5

    .line 1990
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Message-Class field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 1995
    :cond_5
    const/16 v35, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 1996
    .local v14, niMessageSize:J
    const-wide/16 v35, -0x1

    cmp-long v35, v35, v14

    if-nez v35, :cond_6

    .line 1997
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Message-Size field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2002
    :cond_6
    const/16 v35, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 2003
    .local v16, niTransactionId:[B
    if-nez v16, :cond_13

    .line 2004
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Transaction-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2011
    .end local v10           #niContentLocation:[B
    .end local v11           #niExpiry:J
    .end local v13           #niMessageClass:[B
    .end local v14           #niMessageSize:J
    .end local v16           #niTransactionId:[B
    :pswitch_3
    const/16 v35, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 2012
    .local v17, nriStatus:I
    if-nez v17, :cond_7

    .line 2013
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFYRESP_IND PDU hasn\'t Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2018
    :cond_7
    const/16 v35, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 2019
    .local v18, nriTransactionId:[B
    if-nez v18, :cond_13

    .line 2020
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFYRESP_IND PDU hasn\'t Transaction-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2027
    .end local v17           #nriStatus:I
    .end local v18           #nriTransactionId:[B
    :pswitch_4
    const/16 v35, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 2028
    .local v19, rcContentType:[B
    if-nez v19, :cond_8

    .line 2029
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_RETRIEVE_CONF PDU hasn\'t Content-Type field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2034
    :cond_8
    const/16 v35, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 2035
    .local v20, rcDate:J
    const-wide/16 v35, -0x1

    cmp-long v35, v35, v20

    if-nez v35, :cond_13

    .line 2036
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_RETRIEVE_CONF PDU hasn\'t Date field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2043
    .end local v19           #rcContentType:[B
    .end local v20           #rcDate:J
    :pswitch_5
    const/16 v35, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 2044
    .local v3, diDate:J
    const-wide/16 v35, -0x1

    cmp-long v35, v35, v3

    if-nez v35, :cond_9

    .line 2045
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t Date field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2050
    :cond_9
    const/16 v35, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 2051
    .local v5, diMessageId:[B
    if-nez v5, :cond_a

    .line 2052
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t Message-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2057
    :cond_a
    const/16 v35, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 2058
    .local v6, diStatus:I
    if-nez v6, :cond_b

    .line 2059
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2064
    :cond_b
    const/16 v35, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 2065
    .local v7, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_13

    .line 2066
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t To field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2073
    .end local v3           #diDate:J
    .end local v5           #diMessageId:[B
    .end local v6           #diStatus:I
    .end local v7           #diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6
    const/16 v35, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 2074
    .local v2, aiTransactionId:[B
    if-nez v2, :cond_13

    .line 2075
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_ACKNOWLEDGE_IND PDU hasn\'t Transaction-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2082
    .end local v2           #aiTransactionId:[B
    :pswitch_7
    const/16 v35, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 2083
    .local v22, roDate:J
    const-wide/16 v35, -0x1

    cmp-long v35, v35, v22

    if-nez v35, :cond_c

    .line 2084
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t Date field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2089
    :cond_c
    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 2090
    .local v24, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_d

    .line 2091
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t From field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2096
    :cond_d
    const/16 v35, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 2097
    .local v25, roMessageId:[B
    if-nez v25, :cond_e

    .line 2098
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t Message-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2103
    :cond_e
    const/16 v35, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 2104
    .local v26, roReadStatus:I
    if-nez v26, :cond_f

    .line 2105
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t Read-Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2110
    :cond_f
    const/16 v35, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 2111
    .local v27, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_13

    .line 2112
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t To field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2119
    .end local v22           #roDate:J
    .end local v24           #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25           #roMessageId:[B
    .end local v26           #roReadStatus:I
    .end local v27           #roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    const/16 v35, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 2120
    .local v28, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_10

    .line 2121
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t From field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2126
    :cond_10
    const/16 v35, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 2127
    .local v29, rrMessageId:[B
    if-nez v29, :cond_11

    .line 2128
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t Message-Id field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2133
    :cond_11
    const/16 v35, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 2134
    .local v30, rrReadStatus:I
    if-nez v30, :cond_12

    .line 2135
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t Read-Status field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2140
    :cond_12
    const/16 v35, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 2141
    .local v31, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_13

    .line 2142
    const-string v35, "PduParser"

    const-string v36, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t To field"

    invoke-static/range {v35 .. v36}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 2153
    .end local v28           #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29           #rrMessageId:[B
    .end local v30           #rrReadStatus:I
    .end local v31           #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_13
    const/16 v35, 0x1

    goto/16 :goto_0

    .line 1931
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .parameter "part"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1879
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1880
    :cond_0
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_2

    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_2

    .line 1905
    :cond_1
    :goto_0
    return v2

    .line 1886
    :cond_2
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_3

    .line 1887
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1888
    .local v0, contentId:[B
    if-eqz v0, :cond_3

    .line 1889
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_3

    move v2, v3

    .line 1890
    goto :goto_0

    .line 1896
    .end local v0           #contentId:[B
    :cond_3
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_1

    .line 1897
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1898
    .local v1, contentType:[B
    if-eqz v1, :cond_1

    .line 1899
    sget-object v4, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v3

    .line 1900
    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1227
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1228
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1229
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1230
    :cond_1
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1193
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1194
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1195
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1196
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1197
    :cond_1
    if-eq v3, v1, :cond_4

    if-eqz v1, :cond_4

    .line 1199
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 1200
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1201
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1209
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1210
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ne v3, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1204
    :cond_3
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1205
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1213
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1217
    :goto_1
    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    .line 1177
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1188
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 1181
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1188
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1181
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v0, 0x0

    .line 1133
    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    .line 1158
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1137
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1158
    const/4 v0, 0x1

    goto :goto_0

    .line 1137
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 953
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1576
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1578
    :cond_0
    const/4 v0, 0x0

    .line 1579
    .local v0, contentType:[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1580
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1581
    .local v8, temp:I
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    const/4 v9, -0x1

    if-ne v9, v8, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1582
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1584
    and-int/lit16 v1, v8, 0xff

    .line 1586
    .local v1, cur:I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_7

    .line 1587
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1588
    .local v5, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1589
    .local v7, startPos:I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1590
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1591
    sget-boolean v9, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_2

    const/4 v9, -0x1

    if-ne v9, v8, :cond_2

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1592
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1593
    and-int/lit16 v3, v8, 0xff

    .line 1595
    .local v3, first:I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_4

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_4

    .line 1596
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1611
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1612
    .local v2, endPos:I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1613
    .local v6, parameterLen:I
    if-lez v6, :cond_3

    .line 1614
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1617
    :cond_3
    if-gez v6, :cond_8

    .line 1618
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1628
    .end local v2           #endPos:I
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v6           #parameterLen:I
    .end local v7           #startPos:I
    :goto_1
    return-object v9

    .line 1597
    .restart local v3       #first:I
    .restart local v5       #length:I
    .restart local v7       #startPos:I
    :cond_4
    const/16 v9, 0x7f

    if-le v3, v9, :cond_6

    .line 1598
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1600
    .local v4, index:I
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_5

    .line 1601
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1603
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1604
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    .line 1607
    .end local v4           #index:I
    :cond_6
    const-string v9, "PduParser"

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_1

    .line 1621
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v7           #startPos:I
    :cond_7
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_9

    .line 1622
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_8
    :goto_2
    move-object v9, v0

    .line 1628
    goto :goto_1

    .line 1624
    :cond_9
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 23
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1360
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_0

    if-nez p0, :cond_0

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1361
    :cond_0
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-gtz v21, :cond_1

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1363
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v18

    .line 1364
    .local v18, startPos:I
    const/16 v19, 0x0

    .line 1365
    .local v19, tempPos:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1366
    .local v13, lastLen:I
    :goto_0
    if-lez v13, :cond_10

    .line 1367
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v15

    .line 1368
    .local v15, param:I
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_2

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v15, :cond_2

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1369
    :cond_2
    add-int/lit8 v13, v13, -0x1

    .line 1371
    packed-switch v15, :pswitch_data_0

    .line 1547
    :pswitch_0
    const/16 v21, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 1548
    const-string v21, "PduParser"

    const-string v22, "Corrupt Content-Type"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1387
    :pswitch_1
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1388
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 1389
    .local v10, first:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1390
    const/16 v21, 0x7f

    move/from16 v0, v21

    if-le v10, v0, :cond_4

    .line 1392
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 1394
    .local v12, index:I
    sget-object v21, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_3

    .line 1395
    sget-object v21, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v21, v21, v12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    .line 1396
    .local v20, type:[B
    const/16 v21, 0x83

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    .end local v12           #index:I
    .end local v20           #type:[B
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1409
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v22, v18, v19

    sub-int v13, v21, v22

    .line 1410
    goto :goto_0

    .line 1402
    :cond_4
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v20

    .line 1403
    .restart local v20       #type:[B
    if-eqz v20, :cond_3

    if-eqz p1, :cond_3

    .line 1404
    const/16 v21, 0x83

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1427
    .end local v10           #first:I
    .end local v20           #type:[B
    :pswitch_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    .line 1428
    .local v17, start:[B
    if-eqz v17, :cond_5

    if-eqz p1, :cond_5

    .line 1429
    const/16 v21, 0x99

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1433
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v22, v18, v19

    sub-int v13, v21, v22

    .line 1434
    goto/16 :goto_0

    .line 1451
    .end local v17           #start:[B
    :pswitch_3
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1452
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 1453
    .local v11, firstValue:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1455
    const/16 v21, 0x20

    move/from16 v0, v21

    if-le v11, v0, :cond_6

    const/16 v21, 0x7f

    move/from16 v0, v21

    if-lt v11, v0, :cond_7

    :cond_6
    if-nez v11, :cond_9

    .line 1458
    :cond_7
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1460
    .local v5, charsetStr:[B
    :try_start_0
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v4

    .line 1462
    .local v4, charsetInt:I
    const-string v21, "PduParser"

    const-string v22, "Parse CharacterSets: charsetStr"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/16 v21, 0x81

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    .end local v4           #charsetInt:I
    .end local v5           #charsetStr:[B
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1479
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v22, v18, v19

    sub-int v13, v21, v22

    .line 1480
    goto/16 :goto_0

    .line 1464
    .restart local v5       #charsetStr:[B
    :catch_0
    move-exception v8

    .line 1466
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    const-string v21, "PduParser"

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1467
    const/16 v21, 0x81

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1471
    .end local v5           #charsetStr:[B
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v3, v0

    .line 1472
    .local v3, charset:I
    if-eqz p1, :cond_8

    .line 1473
    const-string v21, "PduParser"

    const-string v22, "Parse Well-known-charset: charset"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/16 v21, 0x81

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1492
    .end local v3           #charset:I
    .end local v11           #firstValue:I
    :pswitch_4
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v14

    .line 1493
    .local v14, name:[B
    if-eqz v14, :cond_a

    if-eqz p1, :cond_a

    .line 1494
    const/16 v21, 0x97

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1498
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v22, v18, v19

    sub-int v13, v21, v22

    .line 1499
    goto/16 :goto_0

    .line 1502
    .end local v14           #name:[B
    :pswitch_5
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    .line 1503
    .local v9, fileName:[B
    if-eqz v9, :cond_b

    if-eqz p1, :cond_b

    .line 1504
    const/16 v21, 0x98

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1508
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v22, v18, v19

    sub-int v13, v21, v22

    .line 1509
    goto/16 :goto_0

    .line 1512
    .end local v9           #fileName:[B
    :pswitch_6
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 1513
    .local v16, path:[B
    if-eqz v16, :cond_c

    if-eqz p1, :cond_c

    .line 1514
    const/16 v21, 0x9d

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1518
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v22, v18, v19

    sub-int v13, v21, v22

    .line 1519
    goto/16 :goto_0

    .line 1522
    .end local v16           #path:[B
    :pswitch_7
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1523
    .local v6, comment:[B
    if-eqz v6, :cond_d

    if-eqz p1, :cond_d

    .line 1524
    const/16 v21, 0x9b

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1528
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v22, v18, v19

    sub-int v13, v21, v22

    .line 1529
    goto/16 :goto_0

    .line 1532
    .end local v6           #comment:[B
    :pswitch_8
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v7

    .line 1533
    .local v7, domain:[B
    if-eqz v7, :cond_e

    if-eqz p1, :cond_e

    .line 1534
    const/16 v21, 0x9c

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v19

    .line 1538
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v21

    sub-int v22, v18, v19

    sub-int v13, v21, v22

    .line 1539
    goto/16 :goto_0

    .line 1550
    .end local v7           #domain:[B
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1556
    .end local v15           #param:I
    :cond_10
    if-eqz v13, :cond_11

    .line 1557
    const-string v21, "PduParser"

    const-string v22, "Corrupt Content-Type"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_11
    return-void

    .line 1371
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/4 v7, 0x0

    .line 1029
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1030
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1031
    const/4 v3, 0x0

    .line 1032
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1033
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1034
    .local v5, temp:I
    sget-boolean v8, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    const/4 v8, -0x1

    if-ne v8, v5, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1035
    :cond_1
    and-int/lit16 v2, v5, 0xff

    .line 1036
    .local v2, first:I
    if-nez v2, :cond_2

    .line 1059
    :goto_0
    return-object v7

    .line 1040
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1041
    const/16 v8, 0x20

    if-ge v2, v8, :cond_3

    .line 1042
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1044
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1047
    :cond_3
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1050
    .local v6, textString:[B
    if-eqz v0, :cond_4

    .line 1051
    :try_start_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_1
    move-object v7, v3

    .line 1059
    goto :goto_0

    .line 1053
    :cond_4
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 1055
    :catch_0
    move-exception v1

    .line 1056
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .parameter "pduDataStream"

    .prologue
    .line 1302
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1303
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1304
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1305
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1306
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1307
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    .line 1308
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1310
    :goto_0
    return-wide v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 9
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1270
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1271
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1272
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-ne v7, v4, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1273
    :cond_1
    and-int/lit16 v0, v4, 0xff

    .line 1275
    .local v0, count:I
    if-le v0, v8, :cond_2

    .line 1276
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1279
    :cond_2
    const-wide/16 v2, 0x0

    .line 1281
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1282
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1283
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    if-ne v7, v4, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1284
    :cond_3
    shl-long/2addr v2, v8

    .line 1285
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1288
    :cond_4
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 25
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1641
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_0

    if-nez p0, :cond_0

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1642
    :cond_0
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_1

    if-nez p1, :cond_1

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1643
    :cond_1
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_2

    if-gtz p2, :cond_2

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1661
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    .line 1662
    .local v11, startPos:I
    const/4 v14, 0x0

    .line 1663
    .local v14, tempPos:I
    move/from16 v9, p2

    .line 1664
    .local v9, lastLen:I
    :cond_3
    :goto_0
    if-lez v9, :cond_16

    .line 1665
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1666
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    .line 1667
    .local v7, header:I
    sget-boolean v21, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v21, :cond_4

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v7, :cond_4

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 1668
    :cond_4
    add-int/lit8 v9, v9, -0x1

    .line 1670
    const/16 v21, 0x7f

    move/from16 v0, v21

    if-le v7, v0, :cond_e

    .line 1672
    sparse-switch v7, :sswitch_data_0

    .line 1783
    const/16 v21, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 1784
    const-string v21, "PduParser"

    const-string v22, "Corrupt Part headers"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    const/16 v21, 0x0

    .line 1868
    .end local v7           #header:I
    :goto_1
    return v21

    .line 1678
    .restart local v7       #header:I
    :sswitch_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1679
    .local v4, contentLocation:[B
    if-eqz v4, :cond_5

    .line 1680
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1683
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1684
    sub-int v21, v11, v14

    sub-int v9, p2, v21

    .line 1685
    goto :goto_0

    .line 1691
    .end local v4           #contentLocation:[B
    :sswitch_1
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1692
    .local v3, contentId:[B
    if-eqz v3, :cond_6

    .line 1693
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1696
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1697
    sub-int v21, v11, v14

    sub-int v9, p2, v21

    .line 1698
    goto :goto_0

    .line 1701
    .end local v3           #contentId:[B
    :sswitch_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v20

    .line 1702
    .local v20, xWapContentUri:[B
    if-eqz v20, :cond_7

    .line 1703
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setXWapContentUri([B)V

    .line 1706
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1707
    sub-int v21, v11, v14

    sub-int v9, p2, v21

    .line 1709
    goto/16 :goto_0

    .line 1711
    .end local v20           #xWapContentUri:[B
    :sswitch_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v5

    .line 1712
    .local v5, date:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v5, v21, v23

    .line 1713
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/google/android/mms/pdu/PduPart;->setDate(J)V

    .line 1715
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1716
    sub-int v21, v11, v14

    sub-int v9, p2, v21

    .line 1717
    goto/16 :goto_0

    .line 1734
    .end local v5           #date:J
    :sswitch_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1110031

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1737
    .local v2, contentDisposition:Z
    if-eqz v2, :cond_3

    .line 1738
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 1739
    .local v10, len:I
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1740
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 1741
    .local v17, thisStartPos:I
    const/16 v16, 0x0

    .line 1742
    .local v16, thisEndPos:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v19

    .line 1744
    .local v19, value:I
    const/16 v21, 0x80

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 1745
    sget-object v21, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1758
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1759
    sub-int v21, v17, v16

    move/from16 v0, v21

    if-ge v0, v10, :cond_9

    .line 1760
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v19

    .line 1761
    const/16 v21, 0x98

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1762
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1767
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1768
    sub-int v21, v17, v16

    move/from16 v0, v21

    if-ge v0, v10, :cond_9

    .line 1769
    sub-int v21, v17, v16

    sub-int v8, v10, v21

    .line 1770
    .local v8, last:I
    new-array v12, v8, [B

    .line 1771
    .local v12, temp:[B
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1775
    .end local v8           #last:I
    .end local v12           #temp:[B
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1776
    sub-int v21, v11, v14

    sub-int v9, p2, v21

    .line 1777
    goto/16 :goto_0

    .line 1746
    :cond_a
    const/16 v21, 0x81

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1747
    sget-object v21, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1748
    :cond_b
    const/16 v21, 0x82

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1749
    sget-object v21, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    .line 1751
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1753
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto/16 :goto_2

    .line 1787
    .end local v2           #contentDisposition:Z
    .end local v10           #len:I
    .end local v16           #thisEndPos:I
    .end local v17           #thisStartPos:I
    .end local v19           #value:I
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1790
    :cond_e
    const/16 v21, 0x20

    move/from16 v0, v21

    if-lt v7, v0, :cond_14

    const/16 v21, 0x7f

    move/from16 v0, v21

    if-gt v7, v0, :cond_14

    .line 1793
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1795
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1796
    .local v13, tempHeader:[B
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 1798
    .local v15, tempValue:[B
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    .line 1800
    .local v18, unAssignedHeader:Ljava/lang/String;
    const-string v21, "PduParser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Got unknown header field: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    const-string v21, "PduParser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Got unknown header tempValue: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    const/16 v21, 0x1

    const-string v22, "Content-Transfer-Encoding"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 1805
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1810
    :cond_f
    const/16 v21, 0x1

    const-string v22, "Content-ID"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 1812
    if-eqz v15, :cond_10

    .line 1813
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1820
    :cond_10
    const/16 v21, 0x1

    const-string v22, "Content-Location"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 1822
    if-eqz v15, :cond_11

    .line 1823
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1830
    :cond_11
    const/16 v21, 0x1

    const-string v22, "Content-Disposition"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 1832
    if-eqz v15, :cond_12

    .line 1833
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1840
    :cond_12
    const/16 v21, 0x1

    const-string v22, "Name"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 1842
    if-eqz v15, :cond_13

    .line 1843
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 1848
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1849
    sub-int v21, v11, v14

    sub-int v9, p2, v21

    .line 1850
    goto/16 :goto_0

    .line 1855
    .end local v13           #tempHeader:[B
    .end local v15           #tempValue:[B
    .end local v18           #unAssignedHeader:Ljava/lang/String;
    :cond_14
    const/16 v21, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 1856
    const-string v21, "PduParser"

    const-string v22, "Corrupt Part headers"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1859
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1863
    .end local v7           #header:I
    :cond_16
    if-eqz v9, :cond_17

    .line 1864
    const-string v21, "PduParser"

    const-string v22, "Corrupt Part headers"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1868
    :cond_17
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 1672
    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0x92 -> :sswitch_3
        0xae -> :sswitch_4
        0xb0 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 25
    .parameter "pduDataStream"

    .prologue
    .line 825
    if-nez p0, :cond_1

    .line 826
    const/4 v3, 0x0

    .line 941
    :cond_0
    :goto_0
    return-object v3

    .line 829
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 830
    .local v7, count:I
    new-instance v3, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 832
    .local v3, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v7, :cond_0

    .line 833
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 834
    .local v11, headerLength:I
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 835
    .local v8, dataLength:I
    new-instance v15, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v15}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 836
    .local v15, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 837
    .local v21, startPos:I
    if-gtz v21, :cond_2

    .line 839
    const-string v22, "PduParser"

    const-string v23, "PduParser: parseParts: Invalid part."

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const/4 v3, 0x0

    goto :goto_0

    .line 844
    :cond_2
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 845
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 846
    .local v6, contentType:[B
    if-eqz v6, :cond_5

    .line 847
    invoke-virtual {v15, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 853
    :goto_2
    const/16 v22, 0x97

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v14, v22

    check-cast v14, [B

    .line 854
    .local v14, name:[B
    if-eqz v14, :cond_3

    .line 855
    invoke-virtual {v15, v14}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 859
    :cond_3
    const/16 v22, 0x81

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 860
    .local v4, charset:Ljava/lang/Integer;
    if-eqz v4, :cond_4

    .line 861
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 865
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 866
    .local v10, endPos:I
    sub-int v22, v21, v10

    sub-int v19, v11, v22

    .line 867
    .local v19, partHeaderLen:I
    if-lez v19, :cond_6

    .line 868
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v15, v1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v22

    if-nez v22, :cond_7

    .line 870
    const-string v22, "PduParser"

    const-string v23, "PduParser: parseParts: Parse part header faild."

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 849
    .end local v4           #charset:Ljava/lang/Integer;
    .end local v10           #endPos:I
    .end local v14           #name:[B
    .end local v19           #partHeaderLen:I
    :cond_5
    sget-object v22, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    .line 873
    .restart local v4       #charset:Ljava/lang/Integer;
    .restart local v10       #endPos:I
    .restart local v14       #name:[B
    .restart local v19       #partHeaderLen:I
    :cond_6
    if-gez v19, :cond_7

    .line 875
    const-string v22, "PduParser"

    const-string v23, "PduParser: parseParts: Invalid length of content-type"

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 882
    :cond_7
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    if-nez v22, :cond_8

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v22

    if-nez v22, :cond_8

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v22

    if-nez v22, :cond_8

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v22

    if-nez v22, :cond_8

    .line 886
    const-string v22, "PduParser"

    const-string v23, "PduParser: parseParts: Hasn\'t find ContentLocation,so generate one."

    invoke-static/range {v22 .. v23}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 892
    :cond_8
    if-lez v8, :cond_a

    .line 893
    new-array v0, v8, [B

    move-object/from16 v17, v0

    .line 894
    .local v17, partData:[B
    new-instance v16, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 897
    .local v16, partContentType:Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v20

    .line 898
    .local v20, readLen:I
    move/from16 v0, v20

    if-eq v0, v8, :cond_9

    .line 899
    const-string v22, "PduParser"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "len="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " readLen="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 903
    :cond_9
    const-string v22, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 905
    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 907
    .local v5, childBody:Lcom/google/android/mms/pdu/PduBody;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v15

    .line 932
    .end local v5           #childBody:Lcom/google/android/mms/pdu/PduBody;
    .end local v16           #partContentType:Ljava/lang/String;
    .end local v17           #partData:[B
    .end local v20           #readLen:I
    :cond_a
    :goto_3
    invoke-static {v15}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v22

    if-nez v22, :cond_f

    .line 934
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0, v15}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 832
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 910
    .restart local v16       #partContentType:Ljava/lang/String;
    .restart local v17       #partData:[B
    .restart local v20       #readLen:I
    :cond_b
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v18

    .line 911
    .local v18, partDataEncoding:[B
    if-eqz v18, :cond_c

    .line 912
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 913
    .local v9, encoding:Ljava/lang/String;
    const-string v22, "base64"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 915
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v17

    .line 923
    .end local v9           #encoding:Ljava/lang/String;
    :cond_c
    :goto_5
    if-nez v17, :cond_e

    .line 924
    const-string v22, "Decode part data error!"

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 925
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 916
    .restart local v9       #encoding:Ljava/lang/String;
    :cond_d
    const-string/jumbo v22, "quoted-printable"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 918
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v17

    goto :goto_5

    .line 927
    .end local v9           #encoding:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_3

    .line 937
    .end local v16           #partContentType:Ljava/lang/String;
    .end local v17           #partData:[B
    .end local v18           #partDataEncoding:[B
    .end local v20           #readLen:I
    :cond_f
    invoke-virtual {v3, v15}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_4
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .parameter "pduDataStream"

    .prologue
    .line 1247
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1248
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1249
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1250
    :cond_1
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 967
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 968
    :cond_0
    const/4 v0, 0x0

    .line 969
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 970
    .local v1, temp:I
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 986
    :goto_0
    return v2

    .line 974
    :cond_1
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_2

    .line 975
    shl-int/lit8 v0, v0, 0x7

    .line 976
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 977
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 978
    if-ne v1, v3, :cond_1

    move v2, v1

    .line 979
    goto :goto_0

    .line 983
    :cond_2
    shl-int/lit8 v0, v0, 0x7

    .line 984
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 986
    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .parameter "pduDataStream"

    .prologue
    .line 1004
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1005
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1006
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1007
    :cond_1
    and-int/lit16 v0, v1, 0xff

    .line 1009
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_2

    .line 1012
    .end local v0           #first:I
    :goto_0
    return v0

    .line 1011
    .restart local v0       #first:I
    :cond_2
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3

    .line 1012
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 1015
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 1071
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1089
    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1092
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1093
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1094
    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    .line 1097
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1112
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1098
    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    .line 1101
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1104
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1322
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1323
    :cond_0
    new-array v0, p1, [B

    .line 1324
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1325
    .local v1, readLen:I
    if-ge v1, p1, :cond_1

    .line 1326
    const/4 v1, -0x1

    .line 1328
    .end local v1           #readLen:I
    :cond_1
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 28

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 110
    const-string v25, "PduParser"

    const-string v26, "Input parse stream is null"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v19, 0x0

    .line 267
    :cond_0
    :goto_0
    return-object v19

    .line 115
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    if-nez v25, :cond_2

    .line 118
    const-string v25, "PduParser"

    const-string v26, "Parse PduHeader Failed"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/16 v19, 0x0

    goto :goto_0

    .line 123
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    const/16 v26, 0x8c

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v11

    .line 126
    .local v11, messageType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 127
    const-string v25, "check mandatory headers failed!"

    invoke-static/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 128
    const/16 v19, 0x0

    goto :goto_0

    .line 132
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 134
    .local v6, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 135
    const/16 v25, 0x84

    move/from16 v0, v25

    if-ne v0, v11, :cond_6

    const/16 v25, 0x20

    move/from16 v0, v25

    if-lt v6, v0, :cond_6

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    const/16 v26, 0x84

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 137
    .local v4, contentType:[B
    if-nez v4, :cond_4

    .line 138
    const-string v25, "PduParser"

    const-string v26, "Parse MESSAGE_TYPE_RETRIEVE_CONF Failed: content Type is null _0"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 141
    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 142
    .local v5, contentTypeStr:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 143
    const-string v25, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    const-string v25, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    const-string v25, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 147
    const-string/jumbo v25, "text/plain"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 148
    const-string v25, "PduParser"

    const-string v26, "Content Type is text/plain"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v24, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 151
    .local v24, theOnlyPart:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 154
    const-string v25, "<part1>"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 158
    const/16 v16, 0x0

    .line 159
    .local v16, partDataLen:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 160
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 163
    :cond_5
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 164
    .local v15, partData:[B
    const-string v25, "PduParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "got part length: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v0, v15, v1, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 167
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    .line 168
    .local v23, showData:Ljava/lang/String;
    const-string v25, "PduParser"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "show data: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 171
    const-string v25, "PduParser"

    const-string/jumbo v26, "setData finish"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v14, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 173
    .local v14, onlyPartBody:Lcom/google/android/mms/pdu/PduBody;
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 174
    const/16 v19, 0x0

    .line 176
    .local v19, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :try_start_0
    new-instance v20, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v14}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v19           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .local v20, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    move-object/from16 v19, v20

    .line 180
    .end local v20           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .restart local v19       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :goto_2
    if-nez v19, :cond_0

    .line 181
    const-string v25, "PduParser"

    const-string/jumbo v26, "retrieveConf is null"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 177
    :catch_0
    move-exception v9

    .line 178
    .local v9, e:Ljava/lang/Exception;
    const-string v25, "PduParser"

    const-string/jumbo v26, "new RetrieveConf has exception"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 191
    .end local v4           #contentType:[B
    .end local v5           #contentTypeStr:Ljava/lang/String;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v14           #onlyPartBody:Lcom/google/android/mms/pdu/PduBody;
    .end local v15           #partData:[B
    .end local v16           #partDataLen:I
    .end local v19           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v23           #showData:Ljava/lang/String;
    .end local v24           #theOnlyPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_6
    const/16 v25, 0x80

    move/from16 v0, v25

    if-eq v0, v11, :cond_7

    const/16 v25, 0x84

    move/from16 v0, v25

    if-ne v0, v11, :cond_8

    .line 194
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v25, v0

    if-nez v25, :cond_8

    .line 197
    const-string v25, "PduParser"

    const-string v26, "Parse parts Failed"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 202
    :cond_8
    packed-switch v11, :pswitch_data_0

    .line 266
    const-string v25, "Parser doesn\'t support this message type in this version!"

    invoke-static/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 267
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 204
    :pswitch_0
    new-instance v22, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v22, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object/from16 v19, v22

    .line 205
    goto/16 :goto_0

    .line 207
    .end local v22           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v21, Lcom/google/android/mms/pdu/SendConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v21, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object/from16 v19, v21

    .line 208
    goto/16 :goto_0

    .line 210
    .end local v21           #sendConf:Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v12, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v12, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object/from16 v19, v12

    .line 212
    goto/16 :goto_0

    .line 214
    .end local v12           #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v13, Lcom/google/android/mms/pdu/NotifyRespInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v13, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object/from16 v19, v13

    .line 216
    goto/16 :goto_0

    .line 218
    .end local v13           #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v19, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 221
    .restart local v19       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v4

    .line 222
    .restart local v4       #contentType:[B
    if-nez v4, :cond_9

    .line 223
    const-string v25, "PduParser"

    const-string v26, "Parse MESSAGE_TYPE_RETRIEVE_CONF Failed: content Type is null _1"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 226
    :cond_9
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    .line 228
    .local v7, ctTypeStr:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 230
    const-string v25, "application/vnd.wap.multipart.mixed"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    const-string v25, "application/vnd.wap.multipart.related"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    const-string v25, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    const-string/jumbo v25, "text/plain"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 239
    const-string v25, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v10

    .line 243
    .local v10, firstPart:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto/16 :goto_0

    .line 247
    .end local v10           #firstPart:Lcom/google/android/mms/pdu/PduPart;
    :cond_a
    const-string v25, "PduParser"

    const-string v26, "Parse MESSAGE_TYPE_RETRIEVE_CONF Failed: content Type is null _2"

    invoke-static/range {v25 .. v26}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 250
    .end local v4           #contentType:[B
    .end local v7           #ctTypeStr:Ljava/lang/String;
    .end local v19           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v8, Lcom/google/android/mms/pdu/DeliveryInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v8, v0}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object/from16 v19, v8

    .line 252
    goto/16 :goto_0

    .line 254
    .end local v8           #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v3, Lcom/google/android/mms/pdu/AcknowledgeInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object/from16 v19, v3

    .line 256
    goto/16 :goto_0

    .line 258
    .end local v3           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v17, Lcom/google/android/mms/pdu/ReadOrigInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v17, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object/from16 v19, v17

    .line 260
    goto/16 :goto_0

    .line 262
    .end local v17           #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v18, Lcom/google/android/mms/pdu/ReadRecInd;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v18, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object/from16 v19, v18

    .line 264
    goto/16 :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public parse(Z)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1
    .parameter "forRestore"

    .prologue
    .line 2163
    iput-boolean p1, p0, Lcom/google/android/mms/pdu/PduParser;->mForRestore:Z

    .line 2164
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    return-object v0
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 31
    .parameter "pduDataStream"

    .prologue
    .line 278
    if-nez p1, :cond_1

    .line 279
    const/4 v11, 0x0

    .line 815
    :cond_0
    :goto_0
    return-object v11

    .line 282
    :cond_1
    const/4 v12, 0x1

    .line 283
    .local v12, keepParsing:Z
    new-instance v11, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 285
    .local v11, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_2
    :goto_1
    if-eqz v12, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v27

    if-lez v27, :cond_0

    .line 286
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 287
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 289
    .local v10, headerField:I
    const/16 v27, 0x20

    move/from16 v0, v27

    if-lt v10, v0, :cond_3

    const/16 v27, 0x7f

    move/from16 v0, v27

    if-gt v10, v0, :cond_3

    .line 290
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 291
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 296
    .local v4, bVal:[B
    goto :goto_1

    .line 298
    .end local v4           #bVal:[B
    :cond_3
    packed-switch v10, :pswitch_data_0

    .line 810
    :pswitch_0
    const-string v27, "Unknown header"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v16

    .line 302
    .local v16, messageType:I
    packed-switch v16, :pswitch_data_1

    .line 323
    :try_start_0
    move/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 324
    :catch_0
    move-exception v6

    .line 325
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 327
    const/4 v11, 0x0

    goto :goto_0

    .line 319
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const-string v27, "PduParser"

    const-string v28, "PduParser: parseHeaders: We don\'t support these kind of messages now."

    invoke-static/range {v27 .. v28}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v11, 0x0

    goto :goto_0

    .line 328
    :catch_1
    move-exception v6

    .line 329
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 330
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 363
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v16           #messageType:I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 366
    .local v24, value:I
    :try_start_1
    move/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 367
    :catch_2
    move-exception v6

    .line 368
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 370
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 371
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v6

    .line 372
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 373
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 384
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 392
    .local v24, value:J
    const/16 v27, 0x85

    move/from16 v0, v27

    if-ne v10, v0, :cond_4

    .line 393
    const/16 v27, 0xc9

    move-wide/from16 v0, v24

    move/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 394
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/mms/pdu/PduParser;->mForRestore:Z

    move/from16 v27, v0

    if-nez v27, :cond_4

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v24, v27, v29

    .line 399
    :cond_4
    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 400
    .end local v24           #value:J
    :catch_4
    move-exception v6

    .line 401
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 402
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 413
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v24

    .line 414
    .restart local v24       #value:J
    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_1

    .line 415
    .end local v24           #value:J
    :catch_5
    move-exception v6

    .line 416
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 417
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 443
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v24

    .line 444
    .local v24, value:[B
    if-eqz v24, :cond_2

    .line 446
    :try_start_4
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_1

    .line 447
    :catch_6
    move-exception v6

    .line 448
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 449
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_7
    move-exception v6

    .line 450
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 451
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 467
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 469
    .local v24, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_2

    .line 471
    :try_start_5
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_1

    .line 472
    :catch_8
    move-exception v6

    .line 473
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 474
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_9
    move-exception v6

    .line 475
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 476
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 487
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 489
    .restart local v24       #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v24, :cond_2

    .line 490
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 491
    .local v3, address:[B
    if-eqz v3, :cond_6

    .line 492
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 493
    .local v20, str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 494
    .local v7, endIndex:I
    if-lez v7, :cond_5

    .line 495
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 498
    :cond_5
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 506
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_6
    :try_start_7
    move-object/from16 v0, v24

    invoke-virtual {v11, v0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_1

    .line 507
    :catch_a
    move-exception v6

    .line 508
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 499
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_b
    move-exception v6

    .line 500
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 501
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 509
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :catch_c
    move-exception v6

    .line 510
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 511
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 524
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 527
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v23

    .line 532
    .local v23, token:I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v21

    .line 537
    .local v21, timeValue:J
    const/16 v27, 0x81

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    div-long v27, v27, v29

    add-long v21, v21, v27

    .line 544
    :cond_7
    :try_start_9
    move-wide/from16 v0, v21

    invoke-virtual {v11, v0, v1, v10}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 545
    :catch_d
    move-exception v6

    .line 546
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 547
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 533
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v21           #timeValue:J
    :catch_e
    move-exception v6

    .line 534
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 535
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 557
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v23           #token:I
    :pswitch_a
    const/4 v8, 0x0

    .line 558
    .local v8, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 561
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 564
    .local v9, fromToken:I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v9, :cond_a

    .line 566
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 567
    if-eqz v8, :cond_9

    .line 568
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 569
    .restart local v3       #address:[B
    if-eqz v3, :cond_9

    .line 570
    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 571
    .restart local v20       #str:Ljava/lang/String;
    const-string v27, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 572
    .restart local v7       #endIndex:I
    if-lez v7, :cond_8

    .line 573
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 576
    :cond_8
    :try_start_a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 594
    .end local v3           #address:[B
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_9
    :goto_2
    const/16 v27, 0x89

    :try_start_b
    move/from16 v0, v27

    invoke-virtual {v11, v8, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    .line 595
    :catch_f
    move-exception v6

    .line 596
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 577
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v3       #address:[B
    .restart local v7       #endIndex:I
    .restart local v20       #str:Ljava/lang/String;
    :catch_10
    move-exception v6

    .line 578
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 579
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 585
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v20           #str:Ljava/lang/String;
    :cond_a
    :try_start_c
    new-instance v8, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v27, "insert-address-token"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v8, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .line 587
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_11
    move-exception v6

    .line 588
    .restart local v6       #e:Ljava/lang/NullPointerException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 589
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 597
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v8       #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v6

    .line 598
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 599
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 606
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v8           #from:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v9           #fromToken:I
    :pswitch_b
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 607
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v14

    .line 609
    .local v14, messageClass:I
    const/16 v27, 0x80

    move/from16 v0, v27

    if-lt v14, v0, :cond_e

    .line 612
    const/16 v27, 0x80

    move/from16 v0, v27

    if-ne v0, v14, :cond_b

    .line 613
    :try_start_d
    const-string/jumbo v27, "personal"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 629
    :catch_13
    move-exception v6

    .line 630
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 616
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_b
    const/16 v27, 0x81

    move/from16 v0, v27

    if-ne v0, v14, :cond_c

    .line 617
    :try_start_e
    const-string v27, "advertisement"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    .line 631
    :catch_14
    move-exception v6

    .line 632
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 633
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 620
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_c
    const/16 v27, 0x82

    move/from16 v0, v27

    if-ne v0, v14, :cond_d

    .line 621
    :try_start_f
    const-string v27, "informational"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    .line 624
    :cond_d
    const/16 v27, 0x83

    move/from16 v0, v27

    if-ne v0, v14, :cond_2

    .line 625
    const-string v27, "auto"

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    const/16 v28, 0x8a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    .line 637
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 638
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    .line 639
    .local v15, messageClassString:[B
    if-eqz v15, :cond_2

    .line 641
    const/16 v27, 0x8a

    :try_start_10
    move/from16 v0, v27

    invoke-virtual {v11, v15, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_1

    .line 642
    :catch_15
    move-exception v6

    .line 643
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 644
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_16
    move-exception v6

    .line 645
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 646
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 654
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v14           #messageClass:I
    .end local v15           #messageClassString:[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 657
    .local v26, version:I
    const/16 v27, 0x8d

    :try_start_11
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_1

    .line 658
    :catch_17
    move-exception v6

    .line 659
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Set invalid Octet value: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " into the header filed: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 661
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 662
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_18
    move-exception v6

    .line 663
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Octet header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 664
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 673
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v26           #version:I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 677
    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 684
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .line 686
    .local v19, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v19, :cond_2

    .line 688
    const/16 v27, 0xa0

    :try_start_13
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_1

    .line 690
    :catch_19
    move-exception v6

    .line 691
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 678
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1a
    move-exception v6

    .line 679
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 680
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 692
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v19       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v6

    .line 693
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 694
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 704
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v19           #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 708
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 716
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    .line 717
    .local v17, perviouslySentDate:J
    const/16 v27, 0xa1

    move-wide/from16 v0, v17

    move/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_1

    .line 719
    .end local v17           #perviouslySentDate:J
    :catch_1c
    move-exception v6

    .line 720
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Long-Integer header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 721
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 709
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v6

    .line 710
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 711
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 734
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 737
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 740
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    .line 753
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 756
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 760
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_1

    .line 761
    :catch_1e
    move-exception v6

    .line 762
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " is not Integer-Value"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 763
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 772
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    .line 780
    :pswitch_12
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 782
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .line 785
    .local v5, contentType:[B
    if-eqz v5, :cond_f

    .line 787
    const/16 v27, 0x84

    :try_start_17
    move/from16 v0, v27

    invoke-virtual {v11, v5, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_20

    .line 797
    :cond_f
    :goto_3
    const/16 v27, 0x99

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    sput-object v27, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 800
    const/16 v27, 0x83

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    check-cast v27, [B

    sput-object v27, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 802
    const/4 v12, 0x0

    .line 803
    goto/16 :goto_1

    .line 788
    :catch_1f
    move-exception v6

    .line 789
    .local v6, e:Ljava/lang/NullPointerException;
    const-string/jumbo v27, "null pointer error!"

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 790
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_20
    move-exception v6

    .line 791
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "is not Text-String header field!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 792
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 302
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
