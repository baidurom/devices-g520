.class Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/agps/MtkAgpsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AgpsPhoneStateListener"
.end annotation


# static fields
.field public static final NETWORK_TYPE_2G:I = 0x0

.field public static final NETWORK_TYPE_3G:I = 0x1

.field public static final NETWORK_TYPE_CDMA:I = 0x2

.field public static final NETWORK_TYPE_NONE:I = -0x1

.field public static final NETWORK_TYPE_SIP:I = 0x3


# instance fields
.field private mIsDataConnected:Z

.field private mIsGemini:Z

.field private mIsNetworkRoaming:Z

.field private mIsSimReady:Z

.field private mNetworkType:I

.field private mSimId:I

.field final synthetic this$0:Lcom/mediatek/agps/MtkAgpsManagerService;


# direct methods
.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 766
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;ZI)V

    .line 767
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/agps/MtkAgpsManagerService;ZI)V
    .locals 2
    .parameter
    .parameter "isGemini"
    .parameter "whichSim"

    .prologue
    const/4 v1, 0x0

    .line 768
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 752
    iput v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsGemini:Z

    .line 760
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 761
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    .line 762
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    .line 763
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    .line 769
    iput-boolean p2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsGemini:Z

    .line 770
    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-lt p3, v0, :cond_1

    .line 771
    :cond_0
    iput v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    .line 775
    :goto_0
    return-void

    .line 773
    :cond_1
    iput p3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    goto :goto_0
.end method

.method private getLocalIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 869
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 870
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 872
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 873
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 874
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_1

    instance-of v6, v3, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 875
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 876
    .local v5, ip:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IP="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 886
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    .end local v5           #ip:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 886
    .end local v0           #e:Ljava/net/SocketException;
    :cond_2
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 883
    :catch_1
    move-exception v0

    .line 884
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private getNetworkTypeGemini()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x3

    .line 799
    const/4 v2, 0x0

    .line 800
    .local v2, ret:I
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 801
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 803
    .local v0, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 806
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkType(I)I

    move-result v1

    .line 807
    .local v1, networkType:I
    if-eq v1, v5, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 811
    :cond_0
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is 3G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 812
    const/4 v2, 0x1

    .line 829
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v1           #networkType:I
    :goto_0
    return v2

    .line 814
    .restart local v0       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1       #networkType:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is 2G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 817
    .end local v1           #networkType:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "ERR: gsm_cell is invalid"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 820
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 821
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is CDMA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 822
    const/4 v2, 0x2

    goto :goto_0

    .line 823
    :cond_4
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 824
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " network type is SIP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 825
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 827
    :cond_5
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: unknown phone type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v5

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0:NONE 1:GSM 2:CDMA 3:SIP)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getNetworkTypeSingle()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x3

    .line 834
    const/4 v2, 0x0

    .line 835
    .local v2, ret:I
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 836
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 838
    .local v0, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 841
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 842
    .local v1, networkType:I
    if-eq v1, v5, :cond_0

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    .line 846
    :cond_0
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is 3G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 847
    const/4 v2, 0x1

    .line 864
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v1           #networkType:I
    :goto_0
    return v2

    .line 849
    .restart local v0       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v1       #networkType:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network type is 2G, networkType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 852
    .end local v1           #networkType:I
    :cond_2
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "ERR: gsm_cell is invalid"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 855
    .end local v0           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 856
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "network type is CDMA"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 857
    const/4 v2, 0x2

    goto :goto_0

    .line 858
    :cond_4
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 859
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "network type is SIP"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 860
    const/4 v2, 0x3

    goto :goto_0

    .line 862
    :cond_5
    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: unknown phone type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (0:NONE 1:GSM 2:CDMA 3:SIP)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSimNum()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method private updateCallState2Agpsd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 928
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0xb

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v1, v2, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 929
    return-void
.end method

.method private updateConnectionState2Agpsd(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 905
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    .line 906
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xe

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 907
    return-void

    .line 906
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateIPAdress()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 910
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v7

    .line 911
    .local v7, ip:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 912
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1102(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1100(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1100(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;

    move-result-object v6

    move v4, v3

    move v5, v3

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;)V

    .line 916
    :cond_0
    return-void
.end method

.method private updateNetworkType2Agpsd()V
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 895
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 896
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getNetworkTypeSingle()I

    move-result v0

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 897
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 902
    :goto_0
    return-void

    .line 899
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getNetworkTypeGemini()I

    move-result v0

    iput v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    .line 900
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v0, v3, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    goto :goto_0
.end method

.method private updateRoamingStatus2Agpsd()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 919
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 920
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    .line 924
    :goto_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xd

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    if-eqz v4, :cond_1

    :goto_1
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 925
    return-void

    .line 922
    :cond_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    goto :goto_0

    .line 924
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateSimStatus2Agpsd(Z)V
    .locals 4
    .parameter "status"

    .prologue
    .line 890
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    .line 891
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/16 v2, 0xa

    iget v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V
    invoke-static {v1, v2, v3, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;III)V

    .line 892
    return-void

    .line 891
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 783
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mNetworkType:I

    return v0
.end method

.method public isDataConnected()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsDataConnected:Z

    return v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    return v0
.end method

.method public isSimReady()Z
    .locals 1

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsNetworkRoaming:Z

    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  (0:idle 1:ringing 2:offhook) incomingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCallState2Agpsd(I)V

    .line 1037
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 997
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCellLocationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 998
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCellInfo2Agpsd()I

    .line 999
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mIsSimReady:Z

    if-eqz v0, :cond_0

    .line 1000
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateNetworkType2Agpsd()V

    .line 1003
    :cond_0
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1008
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1010
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateConnectionState2Agpsd(Z)V

    .line 1011
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateNetworkType2Agpsd()V

    .line 1012
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateIPAdress()V

    .line 1013
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCellInfo2Agpsd()I

    .line 1018
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    if-nez p1, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDataConnectionStateChanged disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1016
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateConnectionState2Agpsd(Z)V

    goto :goto_0
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    const/4 v3, 0x1

    .line 1022
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged phone is in service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateSimStatus2Agpsd(Z)V

    .line 1025
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateRoamingStatus2Agpsd()V

    .line 1030
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onServiceStateChanged phone is out of service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 1028
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateSimStatus2Agpsd(Z)V

    goto :goto_0
.end method

.method public updateCellInfo2Agpsd()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, -0x1

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 941
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 945
    .local v9, phoneType:I
    :goto_0
    if-eq v9, v10, :cond_1

    .line 946
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR: phone type is not GSM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move v0, v1

    .line 989
    .end local v9           #phoneType:I
    :goto_1
    return v0

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v9

    .restart local v9       #phoneType:I
    goto :goto_0

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 951
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v4, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2102(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;

    .line 956
    :goto_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    if-nez v0, :cond_3

    .line 957
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const-string v4, "WARNING: mCellloc is null from getCellLocation"

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move v0, v1

    .line 958
    goto :goto_1

    .line 953
    :cond_2
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    #setter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v4, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2102(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/telephony/gsm/GsmCellLocation;)Landroid/telephony/gsm/GsmCellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 960
    .end local v9           #phoneType:I
    :catch_0
    move-exception v8

    .line 961
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    .line 962
    goto :goto_1

    .line 967
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #phoneType:I
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I

    move-result v0

    if-ne v0, v10, :cond_4

    .line 968
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 969
    .local v6, imsi:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 974
    .local v7, mccMnc:Ljava/lang/String;
    :goto_3
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    .line 975
    .local v2, lac:I
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mCellloc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/gsm/GsmCellLocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 981
    .local v3, cid:I
    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    .line 982
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " IMSI="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " MccMnc="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Lac="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Cid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$100(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    const/4 v1, 0x6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 986
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 971
    .end local v2           #lac:I
    .end local v3           #cid:I
    .end local v6           #imsi:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 972
    .restart local v6       #imsi:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    #getter for: Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getSimNum()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getNetworkOperator(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .restart local v7       #mccMnc:Ljava/lang/String;
    goto/16 :goto_3

    .line 976
    .end local v6           #imsi:Ljava/lang/String;
    .end local v7           #mccMnc:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 977
    .local v8, e:Ljava/lang/NullPointerException;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    .line 978
    goto/16 :goto_1

    .line 988
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local v2       #lac:I
    .restart local v3       #cid:I
    .restart local v6       #imsi:Ljava/lang/String;
    .restart local v7       #mccMnc:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->this$0:Lcom/mediatek/agps/MtkAgpsManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->mSimId:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IMSI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mccMnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V
    invoke-static {v0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->access$700(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    move v0, v1

    .line 989
    goto/16 :goto_1
.end method
