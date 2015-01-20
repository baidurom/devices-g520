.class abstract Lcom/android/server/pm/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandlerParams"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x4


# instance fields
.field private mRetries:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 6218
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6218
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method abstract handleReturnCode()V
.end method

.method abstract handleServiceError()V
.end method

.method abstract handleStartCopy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method final serviceError()V
    .locals 2

    .prologue
    .line 6252
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    const-string v1, "serviceError"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6253
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 6254
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 6255
    return-void
.end method

.method final startCopy()Z
    .locals 4

    .prologue
    .line 6230
    :try_start_0
    const-string v2, "PackageManager"

    const-string v3, "Start copying apk"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6232
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 6233
    const-string v2, "PackageManager"

    const-string v3, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6234
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6235
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 6236
    const/4 v1, 0x0

    .line 6248
    :goto_0
    return v1

    .line 6238
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleStartCopy()V

    .line 6239
    const-string v2, "PackageManager"

    const-string v3, "Apk copy done"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6240
    const/4 v1, 0x1

    .line 6247
    .local v1, res:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    goto :goto_0

    .line 6242
    .end local v1           #res:Z
    :catch_0
    move-exception v0

    .line 6243
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$400()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PackageManager"

    const-string v3, "Posting install MCS_RECONNECT"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6244
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6245
    const/4 v1, 0x0

    .restart local v1       #res:Z
    goto :goto_1
.end method
