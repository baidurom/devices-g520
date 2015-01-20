.class Landroid/mtp/MtpDatabase$MtpDatabaseThread;
.super Ljava/lang/Thread;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtpDatabaseThread"
.end annotation


# static fields
.field private static final UPDATE_DB:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1335
    iput-object p1, p0, Landroid/mtp/MtpDatabase$MtpDatabaseThread;->this$0:Landroid/mtp/MtpDatabase;

    .line 1336
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1332
    iput-object v0, p0, Landroid/mtp/MtpDatabase$MtpDatabaseThread;->mContext:Landroid/content/Context;

    .line 1333
    iput-object v0, p0, Landroid/mtp/MtpDatabase$MtpDatabaseThread;->mHandler:Landroid/os/Handler;

    .line 1337
    iput-object p2, p0, Landroid/mtp/MtpDatabase$MtpDatabaseThread;->mContext:Landroid/content/Context;

    .line 1338
    return-void
.end method

.method static synthetic access$000(Landroid/mtp/MtpDatabase$MtpDatabaseThread;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/mtp/MtpDatabase$MtpDatabaseThread;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1341
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1342
    new-instance v0, Landroid/mtp/MtpDatabase$MtpDatabaseThread$1;

    invoke-direct {v0, p0}, Landroid/mtp/MtpDatabase$MtpDatabaseThread$1;-><init>(Landroid/mtp/MtpDatabase$MtpDatabaseThread;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase$MtpDatabaseThread;->mHandler:Landroid/os/Handler;

    .line 1359
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1360
    return-void
.end method
