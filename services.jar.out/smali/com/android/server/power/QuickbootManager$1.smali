.class Lcom/android/server/power/QuickbootManager$1;
.super Ljava/lang/Thread;
.source "QuickbootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/QuickbootManager;->enableRadio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/QuickbootManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/QuickbootManager;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/server/power/QuickbootManager$1;->this$0:Lcom/android/server/power/QuickbootManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 294
    const/4 v3, 0x0

    .line 296
    .local v3, radioOn:Z
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 313
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v3, v4

    .line 314
    :goto_0
    if-nez v3, :cond_1

    .line 315
    const-string v4, "QuickbootManager"

    const-string v5, "Turning on radio..."

    invoke-static {v4, v5}, Lcom/android/server/power/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v4, 0x10

    if-ge v1, v4, :cond_3

    .line 325
    if-nez v3, :cond_2

    .line 335
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 341
    :cond_2
    :goto_3
    if-eqz v3, :cond_5

    .line 342
    const-string v4, "QuickbootManager"

    const-string v5, "Radio is on."

    invoke-static {v4, v5}, Lcom/android/server/power/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_3
    return-void

    .line 313
    .end local v1           #i:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "QuickbootManager"

    const-string v5, "RemoteException during radio shutdown"

    invoke-static {v4, v5}, Lcom/android/server/power/QuickbootManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v3, 0x1

    goto :goto_1

    .line 337
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #i:I
    :catch_1
    move-exception v0

    .line 338
    .restart local v0       #ex:Landroid/os/RemoteException;
    const/4 v3, 0x1

    goto :goto_3

    .line 345
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_5
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
