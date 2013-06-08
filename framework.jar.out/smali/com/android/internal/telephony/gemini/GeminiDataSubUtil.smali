.class public Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$1;,
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;,
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;,
        Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static c:Z


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

.field private b:[Z

.field private d:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private e:Lcom/android/internal/telephony/Phone;

.field private f:Lcom/android/internal/telephony/Phone;

.field private g:Lcom/android/internal/telephony/Phone;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field protected mContext:Landroid/content/Context;

.field private n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

.field private o:[Z

.field private p:[Z

.field private q:[Z

.field private r:[Z

.field private s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

.field private t:[Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:[Z

.field private x:Ljava/lang/Object;

.field private y:Ljava/lang/Object;

.field private z:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    const-class v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    .line 130
    sput-boolean v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c:Z

    return-void

    :cond_0
    move v0, v1

    .line 73
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x2

    .line 1075
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    .line 138
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 139
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 141
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    .line 142
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    .line 143
    new-array v0, v1, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    .line 145
    new-array v0, v1, [Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    .line 146
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    .line 147
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    .line 148
    new-array v0, v1, [Z

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    .line 149
    new-array v0, v1, [Z

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    .line 152
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 153
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    .line 154
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 155
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 156
    new-array v0, v1, [Z

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->z:Ljava/lang/Object;

    .line 192
    new-instance v0, Lcom/android/internal/telephony/gemini/d;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/d;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    .line 644
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->B:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    .line 1076
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object v0, p2

    .line 1078
    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    .line 1079
    check-cast p2, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    .line 1080
    check-cast p3, Lcom/android/internal/telephony/PhoneProxy;

    iput-object p3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    .line 1081
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    .line 1083
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1084
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1085
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1088
    new-instance v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$c;-><init>(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/d;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:Landroid/content/BroadcastReceiver;

    .line 1089
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v3

    .line 1092
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, v4

    .line 1094
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v3

    .line 1095
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, v4

    .line 1124
    return-void

    .line 128
    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 146
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 147
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 148
    nop

    :array_3
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 149
    nop

    :array_4
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 156
    nop

    :array_5
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private a(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1309
    .line 1311
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1312
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_1

    .line 1313
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 1314
    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v1, "default"

    aput-object v1, v0, p2

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]Attached: have to recover default data connection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[C"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]Attached: getDataConnectionFromSetting()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1324
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1325
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneProxy;->enableApnType(Ljava/lang/String;)I

    move-result v0

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached:then enableApnType() with rc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1327
    if-nez v0, :cond_2

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached:notify DATA is CONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1331
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    const-string v2, "dataEnabled"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnAfterGprsAttached():reset mEnableApnTypeReq as NONE of sim_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1355
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v2, "NONE"

    aput-object v2, v1, p2

    .line 1356
    return v0

    .line 1332
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached: wait for enableApnType() execution result"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1334
    :cond_3
    const/16 v1, 0x63

    if-ne v0, v1, :cond_4

    .line 1336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached but records are not loaded!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached:notify DATA is DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1345
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    const-string/jumbo v2, "noSuchPdp"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1351
    :cond_5
    const/4 v0, 0x0

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]Attached for sim_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 2
    .parameter

    .prologue
    .line 1521
    if-nez p1, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 1527
    :goto_0
    return-object v0

    .line 1523
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1524
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    goto :goto_0

    .line 1526
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAPP:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1527
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)Lcom/android/internal/telephony/PhoneProxy;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 1454
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-eq v0, v1, :cond_2

    .line 1455
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-nez v0, :cond_0

    .line 1456
    const-string v0, "UAPP_C1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    .line 1517
    :goto_0
    return-void

    .line 1458
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-ne v0, v2, :cond_1

    .line 1459
    const-string v0, "UAPP_C2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1462
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C3:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1467
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-eq v0, v1, :cond_5

    .line 1468
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-nez v0, :cond_3

    .line 1469
    const-string v0, "UAPP_C4"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1471
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-ne v0, v2, :cond_4

    .line 1472
    const-string v0, "UAPP_C5"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1473
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1475
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C6:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto :goto_0

    .line 1479
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    if-eq v0, v1, :cond_7

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C6-0:previous_current_use_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1481
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    goto :goto_1

    .line 1482
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    if-eq v0, v1, :cond_9

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C6-1:previous_request_use_gprs_sim_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1484
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    goto :goto_2

    .line 1485
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_a

    .line 1486
    const-string v0, "UAPP_C6-2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1488
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_b

    .line 1489
    const-string v0, "UAPP_C6-3"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1491
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_c

    .line 1492
    const-string v0, "UAPP_C6-4"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1497
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_e

    .line 1502
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1503
    const-string v0, "UAPP_C7"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1506
    :cond_d
    const-string v0, "UAPP_C8"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 1512
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UAPP_C9:Invaild simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 1513
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    return p1
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    return-object v0
.end method

.method private b()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 1782
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EDCDS:simId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  request sim id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1799
    if-ne v1, v0, :cond_4

    .line 1800
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-eq v1, v0, :cond_3

    .line 1801
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_1

    .line 1802
    const-string v0, "EDCDS:enable is ongoing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1803
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 1846
    :cond_0
    :goto_0
    return v0

    .line 1805
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_2

    .line 1808
    const-string v1, "EDCDS:Can\'t enable due to previous disable is ongoing"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 1813
    :cond_2
    const-string v1, "EDCDS:Invalid cases"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1834
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v0

    .line 1835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDataConnectivityDecideSimId(): both sim detached,query gprs sim setting mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1836
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1841
    const/16 v0, 0x63

    goto :goto_0

    .line 1845
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EDCDS:return simId is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v0, v1

    .line 1846
    goto :goto_0
.end method

.method private b(I)I
    .locals 2
    .parameter

    .prologue
    .line 2330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeEnableDataConnectivity():for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2340
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    return p1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiPhone;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    return-object v0
.end method

.method private b(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processGprsDetached():req_detach_simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",inx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1361
    if-nez p1, :cond_0

    move v1, v2

    .line 1372
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 1375
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v4

    .line 1378
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v5, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v5, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1382
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move v1, v3

    .line 1361
    goto :goto_0

    .line 1380
    :cond_1
    :try_start_1
    const-string/jumbo v0, "processGprsDetached():Reset psOpState as NONE"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1381
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1382
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1386
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_4

    .line 1389
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-ne p1, v0, :cond_3

    .line 1390
    const-string v0, "DETACHED sim, set current as none"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1391
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1393
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v3, v0, p1

    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processGprsDetached():Reset as DETACHED state for simId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v0, p1

    .line 1418
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v0

    .line 1419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processGprsDetached(): gprsState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1420
    iget-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    if-eqz v4, :cond_6

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_6

    .line 1423
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 1424
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 1430
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 1431
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    .line 1432
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processGprsDetached():ATTACHING for simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPeerRadioOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1434
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-ne v3, p1, :cond_7

    .line 1435
    const-string/jumbo v0, "processGprsDetached(): request equals detached kick of to check op"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1437
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1438
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1450
    :cond_6
    :goto_1
    return-void

    .line 1439
    :cond_7
    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-ne v0, v1, :cond_6

    .line 1440
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1441
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processGprsDetached():mDetachResetMode is true,psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1442
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1443
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v0, v3

    .line 1444
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1445
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsAttachTimer(II)V

    .line 1446
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    goto :goto_1

    .line 1444
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    return p1
.end method

.method private c()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1871
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1872
    if-ne v1, v0, :cond_3

    .line 1873
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-eq v1, v0, :cond_2

    .line 1874
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_0

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDCDS:Already detaching for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1876
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 1896
    :goto_0
    return v0

    .line 1879
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v1, v2, :cond_1

    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DDCDS:Detach the previous attaching simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1881
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    goto :goto_0

    .line 1886
    :cond_1
    const-string v1, "DDCDS:Invalid cases"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1891
    :cond_2
    const-string v1, "DDCDS:No GPRS is used on any sim cards"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1896
    goto :goto_0
.end method

.method private c(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2345
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AT+CGATT=0"

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v2

    .line 2349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeDisableDataConnectivity():for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2366
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_0

    .line 2397
    :goto_0
    return v4

    .line 2368
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_2

    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    .line 2377
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aput-boolean v3, v0, p1

    .line 2378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abort attach procedure by detach command then set as when needed on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2379
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 2380
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v2, v0, p1

    .line 2381
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    .line 2382
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    goto :goto_0

    .line 2392
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 2393
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2396
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    return v0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c(I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Ljava/lang/String;)V

    return-void
.end method

.method private d()I
    .locals 4

    .prologue
    .line 3058
    .line 3061
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_connection_sim_setting"

    const-wide/16 v2, -0x5

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 3062
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    .line 3067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default Data Setting value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3069
    return v0
.end method

.method private d(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2418
    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "AT+CGATT=1"

    aput-object v4, v0, v2

    const-string v4, ""

    aput-object v4, v0, v1

    .line 2419
    new-array v0, v3, [Ljava/lang/String;

    const-string v4, "AT+CGATT=0"

    aput-object v4, v0, v2

    const-string v4, ""

    aput-object v4, v0, v1

    .line 2420
    const-string v0, "WithOnePsActive:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Ljava/lang/String;)V

    .line 2422
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_0

    .line 2423
    const-string v0, "enableDataConnectivityWithOnePsActive-C0"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v1, v3

    .line 2635
    :goto_0
    return v1

    .line 2425
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_1

    .line 2426
    const-string v0, "enableDataConnectivityWithOnePsActive-C1"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2427
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    goto :goto_0

    .line 2430
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_2

    .line 2432
    const-string v0, "enableDataConnectivityWithOnePsActive-C2"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2433
    const/4 v1, 0x3

    goto :goto_0

    .line 2435
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_14

    .line 2437
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_f

    .line 2438
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-eq v0, p1, :cond_a

    .line 2439
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    aget-object v0, v0, v4

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_3

    .line 2441
    const-string v0, "enableDataConnectivityWithOnePsActive-C3"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2442
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2443
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    goto :goto_0

    .line 2445
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    aget-object v0, v0, v4

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_9

    .line 2447
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    if-nez v0, :cond_8

    .line 2448
    const-string v0, "enableDataConnectivityWithOnePsActive-C4"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2449
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2451
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2455
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_4

    .line 2458
    :cond_4
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2459
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 2460
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    aput-boolean v2, v0, v3

    .line 2463
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-nez v0, :cond_6

    move v0, v1

    .line 2464
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v3, v0

    .line 2465
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v1, v3, v0

    .line 2475
    iget v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 2476
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 2480
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v2

    .line 2481
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C1]enableDataConnectivityWithOnePsActive:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2482
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_7

    .line 2483
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2488
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_6
    move v0, v2

    .line 2463
    goto :goto_1

    .line 2486
    :cond_7
    :try_start_1
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2500
    :cond_8
    const-string v0, "enableDataConnectivityWithOnePsActive-C5"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2502
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    goto/16 :goto_0

    .line 2507
    :cond_9
    const-string v0, "enableDataConnectivityWithOnePsActive-C6"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2508
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2509
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2510
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2520
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    goto/16 :goto_0

    .line 2528
    :cond_a
    const-string v0, "enableDataConnectivityWithOnePsActive-C7"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2529
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2531
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2535
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-nez v0, :cond_d

    move v0, v1

    .line 2537
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_b

    .line 2540
    :cond_b
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2541
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 2542
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aput-boolean v2, v3, v0

    .line 2543
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v2, v0

    .line 2544
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v1, v2, v0

    .line 2554
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {p0, v2, v1, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 2555
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 2559
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v2

    .line 2560
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C2]enableDataConnectivityWithOnePsActive:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2561
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_e

    .line 2562
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2567
    :cond_c
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_d
    move v0, v2

    .line 2535
    goto :goto_2

    .line 2565
    :cond_e
    :try_start_3
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2581
    :cond_f
    const-string v0, "enableDataConnectivityWithOnePsActive-C8"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2582
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 2584
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2587
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    if-nez v0, :cond_12

    move v0, v1

    .line 2589
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_10

    .line 2592
    :cond_10
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2593
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 2594
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aput-boolean v2, v4, v0

    .line 2596
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v4, v2, v0

    .line 2597
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v1, v2, v0

    .line 2607
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V

    .line 2608
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    .line 2612
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v2

    .line 2613
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C3]enableDataConnectivityWithOnePsActive:psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2614
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_13

    .line 2615
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2620
    :cond_11
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_12
    move v0, v2

    .line 2587
    goto :goto_3

    .line 2618
    :cond_13
    :try_start_5
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2634
    :cond_14
    const-string v0, "enableDataConnectivityWithOnePsActive-C9"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2635
    const/4 v1, 0x4

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b(I)I

    move-result v0

    return v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 3033
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "supl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hipri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fota"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "wap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "net"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cmmail"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3046
    :cond_0
    const/4 v0, 0x1

    .line 3048
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    return-object v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    return p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sim1_gprs_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sim2_gprs_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",req_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mExecuteAttachAfterDetach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDetachResetMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mEnableApnTypeReq_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEnableApnTypeReq_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mServicePowerOffFlag_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mServicePowerOffFlag_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3092
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 3093
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "gprs_op_state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3094
    monitor-exit v1

    .line 3095
    return-void

    .line 3094
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e(I)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3054
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    return-object v0
.end method

.method private f(I)V
    .locals 5
    .parameter

    .prologue
    .line 3075
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 3076
    if-eqz v0, :cond_0

    .line 3077
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set data connection setting to simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 3084
    :cond_0
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3102
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    return-void
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    return-object v0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3106
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    return-void
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    return-object v0
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    return-object v0
.end method

.method private static h(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 3110
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiDataSubUtil] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    return-void
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    return-object v0
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->z:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    return-object v0
.end method

.method static synthetic n(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    return v0
.end method

.method static synthetic o(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    return v0
.end method

.method static synthetic p(Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    return v0
.end method


# virtual methods
.method public disableApnType(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 1957
    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableApnType():type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",call Gemini version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1980
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v0

    .line 1982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DAT:Select simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1984
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1985
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 1990
    :goto_0
    return v0

    .line 1987
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public declared-synchronized disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x3

    .line 2871
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableApnTypeGemini():type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",powerOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2873
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    .line 2875
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    .line 2877
    :cond_0
    const-string v1, "DATG:SIM_NONE or Invalid"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2960
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 2882
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not inserted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2871
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2888
    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2892
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v2, v2, p2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v2, v3, :cond_4

    .line 2893
    const-string v0, "Invoke proxy disableApnType()"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2903
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2904
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    .line 2906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke proxy disableApnType2()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke proxy disableApnType3()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 2909
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v2, v2, p2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v2, v2, p2

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->f:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v2, v3, :cond_8

    .line 2911
    :cond_5
    const-string v1, "Want to disable apn while attaching is ongoing"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2919
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching is due to enable apn type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2921
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2922
    const-string v1, "Attaching is enable then disable with same apn type"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnTypeGemini():reset mEnableApnType as NONE for simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2925
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v2, "NONE"

    aput-object v2, v1, p2

    goto/16 :goto_0

    .line 2928
    :cond_6
    const-string v1, "Attaching:Not allow to have already enabled apn which can be disabled!-C1"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2932
    :cond_7
    const-string v1, "Attaching:Not allow to have already enabled apn which can be disabled!-C2"

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2936
    :cond_8
    const-string v0, "Already in Detaching or Detached state"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnTypeGemini(): selectActivePhoneProxy("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ").disableApnType("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") in GprsState.DETACHING or GprsState.DETACHED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2940
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableApnType(Ljava/lang/String;)I

    .line 2955
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnTypeGemini():reset mEnableApnType as NONE for simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2957
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v2, "NONE"

    aput-object v2, v0, p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    move v0, v1

    .line 2960
    goto/16 :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1900
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AT+CGATT=0"

    aput-object v3, v2, v0

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1918
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->c()I

    move-result v2

    .line 1919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDC:Select simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1920
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1921
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    move-result v2

    .line 1923
    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 1930
    :cond_1
    return v0
.end method

.method public disableDataConnectivityGemini(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2687
    const-string v0, "disableDataConnectivityGemini:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(Ljava/lang/String;)V

    .line 2689
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableDataConnectivityGemini():radio off on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2694
    const/4 v0, 0x7

    .line 2739
    :goto_0
    return v0

    .line 2697
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 2698
    :cond_1
    const-string v0, "DDCG:SIM_NONE or Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 2699
    const/4 v0, 0x5

    goto :goto_0

    .line 2705
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 2706
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableDataConnectivityGemini:req_ps_state1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",req_ps_state2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2707
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v2, v0, p1

    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableDataConnectivityGemini:updated req_ps_state1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",req_ps_state2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2709
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2710
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_3

    .line 2712
    const-string v0, "[C4]Kicking off an op and check states"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2715
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2717
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2718
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2719
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2737
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2738
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2739
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 2720
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v3, :cond_4

    .line 2724
    const-string v0, "disableDataConnectivityGemin():current disable sim is attaching, set when needed to abort attaching"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2725
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 2726
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    const/4 v3, 0x0

    aput-boolean v3, v0, p1

    .line 2727
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v0, p1

    .line 2728
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2729
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    const/4 v3, 0x1

    aput-boolean v3, v0, p1

    .line 2730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 2731
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setThisSimAbortGprsAttachByDetach(IZI)V

    .line 2732
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->startMonitorGprsDetachTimer(II)V

    goto :goto_1

    .line 2737
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 2738
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 2735
    :cond_4
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableDataConnectivityGemin():Fail to kick,psOpState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1640
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1641
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1643
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2257
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->disableDnsCheck(Z)V

    .line 2258
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/16 v0, 0x63

    .line 1936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType():type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",call Gemini version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1937
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v1

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EAT:Select simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1939
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1942
    const-string v0, "Do not update the data setting"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    .line 1951
    :cond_0
    :goto_0
    return v0

    .line 1946
    :cond_1
    if-eq v1, v0, :cond_0

    .line 1951
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public declared-synchronized enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 2744
    monitor-enter p0

    .line 2746
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2748
    const-string v0, "EATG:SIM_NONE or Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v0, v1

    .line 2865
    :goto_0
    monitor-exit p0

    return v0

    .line 2753
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2754
    const-string v0, "EATG: APN type is Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    move v0, v1

    .line 2755
    goto :goto_0

    .line 2758
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gemini enableApnTypeGemini():type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",simId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",powerOff="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v4, v4, p2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2759
    if-nez p2, :cond_2

    move v4, v2

    .line 2762
    :goto_1
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2763
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v5

    .line 2764
    if-eqz v5, :cond_4

    array-length v0, v5

    if-eqz v0, :cond_4

    move v0, v3

    .line 2765
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_4

    .line 2766
    const-string v6, "default"

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v6, v7, :cond_3

    .line 2768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnTypeGemini():Peer SIM still have non default active APN type: activeApnTypes["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v5, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v0, v1

    .line 2769
    goto/16 :goto_0

    :cond_2
    move v4, v3

    .line 2759
    goto :goto_1

    .line 2765
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2785
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gemini Before enableApnType:It must detach for peerSimId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",then attach for simId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2786
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d()I

    move-result v5

    .line 2788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gemini enableApnTypeGemini():currentDataConnectionSimId is  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " and current_use_gprs_sim_id is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2791
    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->z:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2804
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    .line 2807
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 2808
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableApnTypeGemini():radio off on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2810
    const/16 v0, 0x62

    monitor-exit v6

    goto/16 :goto_0

    .line 2826
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2744
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2814
    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "is not inserted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    .line 2816
    monitor-exit v6

    move v0, v1

    goto/16 :goto_0

    .line 2820
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getServiceStateGemini(I)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2821
    const-string v0, "The service state is not in service"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->h(Ljava/lang/String;)V

    .line 2822
    monitor-exit v6

    move v0, v1

    goto/16 :goto_0

    .line 2825
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v0

    .line 2826
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2829
    if-eq v0, v2, :cond_8

    const/4 v4, 0x2

    if-ne v0, v4, :cond_c

    :cond_8
    move v0, v2

    .line 2834
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput-boolean v6, v3, v4

    .line 2835
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    const/4 v4, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v3, v4

    .line 2836
    if-eqz v0, :cond_e

    .line 2838
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    if-eqz v0, :cond_9

    const-string v0, "NONE"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "default"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableApnTypeGemini():notify pdp fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2843
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string v1, "apnFailed"

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2845
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aput-object p1, v0, p2

    .line 2847
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p2

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_d

    .line 2848
    const-string/jumbo v0, "proxy enableApnType() is called due to already attached"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2851
    const-string/jumbo v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eq v5, p2, :cond_b

    .line 2852
    if-eqz p2, :cond_a

    if-ne p2, v2, :cond_b

    .line 2853
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 2856
    :cond_b
    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(II)I

    move-result v0

    goto/16 :goto_0

    :cond_c
    move v0, v3

    .line 2832
    goto/16 :goto_3

    .line 2860
    :cond_d
    const-string v0, "enable Apn Type is ongoing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    move v0, v2

    .line 2861
    goto/16 :goto_0

    .line 2864
    :cond_e
    const-string v0, "Can\'t enable:Previous Disable APN is ongoing"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v0, v1

    .line 2865
    goto/16 :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1851
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "AT+CGATT=1"

    aput-object v3, v2, v0

    const-string v3, ""

    aput-object v3, v2, v1

    .line 1852
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b()I

    move-result v2

    .line 1853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EDC:Select simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1854
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1856
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(I)V

    .line 1857
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v2

    .line 1859
    if-eq v2, v1, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    move v0, v1

    .line 1866
    :cond_1
    return v0
.end method

.method public enableDataConnectivityGemini(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2642
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 2643
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    .line 2644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDataConnectivityGemini via GPRS Attach:simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",gprsState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isRadioOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2646
    if-nez v0, :cond_0

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableDataConnectivityGemini():radio off on simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2648
    const/4 v0, 0x4

    .line 2682
    :goto_0
    return v0

    .line 2651
    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_2

    .line 2652
    :cond_1
    const-string v0, "EDCG:SIM_NONE or Invalid"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->g(Ljava/lang/String;)V

    move v0, v2

    .line 2653
    goto :goto_0

    .line 2660
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    monitor-enter v2

    .line 2661
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataConnectivityGemini:req_ps_state1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",req_ps_state2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2662
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v3, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v3, v0, p1

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableDataConnectivityGemini:updated req_ps_state1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",req_ps_state2="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2664
    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2665
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v4, :cond_4

    .line 2669
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C3]Kicking off an op and check states, op_state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2671
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 2673
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2674
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 2675
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2680
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2681
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    .line 2682
    goto/16 :goto_0

    .line 2678
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDataConnectivityGemin():Fail to kick,psOpState="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 2680
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 2681
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1709
    const-string v0, "[DT] getActiveApn"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1710
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1712
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2282
    const-string v0, ""

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1533
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1534
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2275
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1703
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1704
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2269
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1551
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1552
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2290
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1741
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1743
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2310
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1626
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1627
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter

    .prologue
    .line 2251
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1724
    const-string v0, "[DT] getDataCallList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1725
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1726
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 1727
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2302
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataCallList(Landroid/os/Message;)V

    .line 2303
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 1607
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1608
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter

    .prologue
    .line 1571
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1572
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter

    .prologue
    .line 2239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Phone$DataState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2245
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1762
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1763
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->B:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2106
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3006
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2085
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2086
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayGeminin(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3000
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2047
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2048
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2988
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2066
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2067
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2994
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1718
    const-string v0, "[DT] getPdpContextList"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1719
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1720
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPdpContextList(Landroid/os/Message;)V

    .line 1721
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2296
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->getPdpContextList(Landroid/os/Message;)V

    .line 2297
    return-void
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 2007
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2009
    const/4 v0, 0x1

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2968
    const/4 v0, 0x1

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2028
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2029
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1591
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2976
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2982
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 1658
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 2263
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isGprsDetached(I)Z
    .locals 2
    .parameter

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_0

    .line 3026
    const/4 v0, 0x1

    .line 3028
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 2
    .parameter

    .prologue
    .line 3016
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_1

    .line 3018
    :cond_0
    const/4 v0, 0x1

    .line 3020
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 2122
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 2123
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 2125
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 3012
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataActivity()V

    .line 3013
    return-void
.end method

.method public resetGprsRelatedContext(I)V
    .locals 7
    .parameter

    .prologue
    const/16 v3, 0x14

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",current_use_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",request_use_gprs_sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sim_gprs_state_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sim_gprs_state_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",requested_state_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",requested_state_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mExecuteAttachAfterDetach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDetachResetMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEnableApnTypeReq_1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEnableApnTypeReq_2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1132
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1133
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",gprs_op_state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1134
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1136
    if-nez p1, :cond_0

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_8

    .line 1138
    const-string/jumbo v0, "resetGprsRelatedContext:ATTACHING->DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 1140
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1143
    :try_start_1
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1134
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1145
    :cond_1
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1146
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1147
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 1149
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->l:I

    .line 1159
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 1252
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 1253
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->n:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",reset requested_gprs_state as null for simId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1255
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():reset mEnableApnTypeReq as NONE for simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1258
    const-string v0, "NONE"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "default"

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():notify pdp fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1260
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    const-string/jumbo v1, "noSuchPdp"

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->t:[Ljava/lang/String;

    const-string v1, "NONE"

    aput-object v1, v0, p1

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->q:[Z

    aput-boolean v4, v0, p1

    .line 1264
    if-eqz p1, :cond_4

    if-ne p1, v6, :cond_5

    .line 1265
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->r:[Z

    aput-boolean v4, v0, p1

    .line 1287
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->b:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_7

    .line 1288
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1289
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    if-eqz v0, :cond_6

    .line 1291
    const-string/jumbo v0, "resetGprsRelatedContext():remove a delayed kick of for attach due to radio off on both sim"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, p1

    .line 1295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    .line 1298
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1299
    const-string/jumbo v0, "resetGprsRelatedContext():reset gprs_op_state = GprsOpState.NONE"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1300
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1301
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1302
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->j:I

    .line 1306
    :cond_7
    return-void

    .line 1161
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->c:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_9

    .line 1164
    const-string/jumbo v0, "resetGprsRelatedContext:ATTACHED->DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 1166
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    .line 1176
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    goto/16 :goto_0

    .line 1179
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_e

    .line 1180
    const-string/jumbo v0, "resetGprsRelatedContext:DETACHING->DETACHED"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aput-object v1, v0, p1

    .line 1182
    if-nez p1, :cond_a

    const/4 v0, 0x2

    .line 1183
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1184
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1187
    :try_start_6
    sget-boolean v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->b:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    if-eq v0, v2, :cond_b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1190
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 1182
    :cond_a
    const/4 v0, 0x4

    goto :goto_1

    .line 1189
    :cond_b
    :try_start_7
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1190
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1191
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 1194
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-ne v0, p1, :cond_c

    .line 1195
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    .line 1206
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    .line 1210
    :cond_c
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->u:Z

    if-eqz v0, :cond_d

    .line 1215
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 1217
    :try_start_8
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->s:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$b;

    .line 1218
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",kick off a delayed op to see if this is flight mode case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1222
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1223
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1218
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 1225
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetGprsRelatedContext():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Not request to execute attach after detach caused by radio off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->w:[Z

    aput-boolean v4, v0, p1

    .line 1227
    iput-boolean v4, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->v:Z

    goto/16 :goto_0

    .line 1230
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->m:[Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;->a:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil$a;

    if-ne v0, v1, :cond_2

    .line 1235
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    if-ne v0, p1, :cond_2

    .line 1236
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->k:I

    .line 1246
    iput v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->i:I

    goto/16 :goto_0

    .line 1255
    :catchall_4
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    .line 1300
    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1776
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a()V

    .line 1777
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->e:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1779
    return-void
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2324
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->setDataRoamingEnabled(Z)V

    .line 2325
    return-void
.end method

.method public setPeerSimAbortAttachbyDetachOrAsGprsWhenNeededMode(IZI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2174
    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set peerSimId abort attach procedure or as When Needed:before attach for this actionSimId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",with detachPeer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",index="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2176
    if-nez p1, :cond_1

    move v2, v3

    .line 2182
    :goto_0
    if-nez v2, :cond_2

    move v0, v1

    .line 2184
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 2186
    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "AT+EGTYPE=0,1"

    aput-object v5, v1, v4

    const-string v5, ""

    aput-object v5, v1, v3

    .line 2187
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2188
    if-nez v2, :cond_3

    const-string v0, "gprs_connection_mode_setting_sim1"

    .line 2190
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2191
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeGprsConnTypeRetry()V

    .line 2201
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2202
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_0

    .line 2203
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 2204
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->abortDataConnection()V

    .line 2206
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 2179
    goto :goto_0

    .line 2182
    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    .line 2188
    :cond_3
    const-string v0, "gprs_connection_mode_setting_sim2"

    goto :goto_2

    .line 2193
    :cond_4
    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "AT+CGATT=0"

    aput-object v5, v1, v4

    const-string v5, ""

    aput-object v5, v1, v3

    .line 2194
    if-eqz p2, :cond_5

    .line 2195
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2198
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    goto :goto_3
.end method

.method public setThisSimAbortGprsAttachByDetach(IZI)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set thisSimId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":abort its attach procedure by detach command,with inx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",detachFlag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2210
    if-nez p1, :cond_1

    move v0, v1

    .line 2211
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 2213
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AT+EGTYPE=0,1"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    .line 2214
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2215
    if-nez p1, :cond_2

    const-string v0, "gprs_connection_mode_setting_sim1"

    .line 2217
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2218
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->removeGprsConnTypeRetry()V

    .line 2227
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2228
    instance-of v1, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_0

    .line 2229
    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 2230
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->abortDataConnection()V

    .line 2232
    :cond_0
    return-void

    .line 2210
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 2215
    :cond_2
    const-string v0, "gprs_connection_mode_setting_sim2"

    goto :goto_1

    .line 2220
    :cond_3
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "AT+CGATT=0"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    .line 2221
    if-eqz p2, :cond_4

    .line 2222
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->a(I)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2224
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->d:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, v4, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    goto :goto_2
.end method

.method public startMonitorGprsAttachTimer(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2132
    const-string v0, "Before starting a new one, remove old monitor grps attach event first"

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2133
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsAttachTimer(I)V

    .line 2134
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMonitorGprsAttachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",with index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2137
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2138
    return-void
.end method

.method public startMonitorGprsDetachTimer(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2155
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->stopMonitorGprsDetachTimer(I)V

    .line 2156
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMonitorGprsDetachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",with index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2159
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2160
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2161
    return-void
.end method

.method public stopMonitorGprsAttachTimer(I)V
    .locals 2
    .parameter

    .prologue
    .line 2142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsAttachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2143
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsAttachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2145
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->o:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 2146
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2148
    :cond_0
    return-void
.end method

.method public stopMonitorGprsDetachTimer(I)V
    .locals 2
    .parameter

    .prologue
    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsDetachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopMonitorGprsDetachTimer():simId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successfully"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->f(Ljava/lang/String;)V

    .line 2168
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->p:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 2169
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->A:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2171
    :cond_0
    return-void
.end method
