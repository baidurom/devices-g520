.class Lcom/android/stk/StkAppInstaller;
.super Ljava/lang/Object;
.source "StkAppInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppInstaller$1;,
        Lcom/android/stk/StkAppInstaller$UnInstallThread;,
        Lcom/android/stk/StkAppInstaller$InstallThread;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/stk/StkAppInstaller;


# instance fields
.field private installThread:Lcom/android/stk/StkAppInstaller$InstallThread;

.field mContext:Landroid/content/Context;

.field private uninstallThread:Lcom/android/stk/StkAppInstaller$UnInstallThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/android/stk/StkAppInstaller;

    invoke-direct {v0}, Lcom/android/stk/StkAppInstaller;-><init>()V

    sput-object v0, Lcom/android/stk/StkAppInstaller;->mInstance:Lcom/android/stk/StkAppInstaller;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/android/stk/StkAppInstaller$InstallThread;

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppInstaller$InstallThread;-><init>(Lcom/android/stk/StkAppInstaller;Lcom/android/stk/StkAppInstaller$1;)V

    iput-object v0, p0, Lcom/android/stk/StkAppInstaller;->installThread:Lcom/android/stk/StkAppInstaller$InstallThread;

    .line 127
    new-instance v0, Lcom/android/stk/StkAppInstaller$UnInstallThread;

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppInstaller$UnInstallThread;-><init>(Lcom/android/stk/StkAppInstaller;Lcom/android/stk/StkAppInstaller$1;)V

    iput-object v0, p0, Lcom/android/stk/StkAppInstaller;->uninstallThread:Lcom/android/stk/StkAppInstaller$UnInstallThread;

    .line 68
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/stk/StkAppInstaller;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/stk/StkAppInstaller;->mInstance:Lcom/android/stk/StkAppInstaller;

    return-object v0
.end method

.method private static setAppState(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "install"

    .prologue
    const/4 v4, 0x1

    .line 85
    if-nez p0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v5, "StkAppInstaller"

    const-string v6, "[setAppState]+"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 90
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-nez v3, :cond_1

    .line 91
    const-string v5, "StkAppInstaller"

    const-string v6, "[setAppState][pm is null]"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.android.stk"

    const-string v6, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v0, cName:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.android.stk"

    const-string v6, "com.android.stk.StkMenuActivity"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v1, cNameMenu:Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    .line 101
    .local v4, state:I
    :goto_1
    const-string v5, "StkAppInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setAppState][state] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_2
    const-string v5, "StkAppInstaller"

    const-string v6, "[setAppState]-"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    .end local v4           #state:I
    :cond_2
    const/4 v4, 0x2

    goto :goto_1

    .line 106
    .restart local v4       #state:I
    :catch_0
    move-exception v2

    .line 107
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "StkAppInstaller"

    const-string v6, "Could not change STK app state"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method install(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/stk/StkAppInstaller;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/stk/StkAppInstaller;->installThread:Lcom/android/stk/StkAppInstaller$InstallThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method unInstall(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/stk/StkAppInstaller;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/stk/StkAppInstaller;->uninstallThread:Lcom/android/stk/StkAppInstaller$UnInstallThread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method
