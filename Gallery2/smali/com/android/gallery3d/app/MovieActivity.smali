.class public Lcom/android/gallery3d/app/MovieActivity;
.super Landroid/app/Activity;
.source "MovieActivity.java"


# static fields
.field public static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field public static final KEY_TREAT_UP_AS_BACK:Ljava/lang/String; = "treat-up-as-back"

.field private static final LOG:Z = true

.field private static final SHARE_HISTORY_FILE:Ljava/lang/String; = "video_share_history_file"

.field private static final TAG:Ljava/lang/String; = "MovieActivity"

.field private static final VIDEO_FILE_SCHEMA:Ljava/lang/String; = "file"

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/*"

.field private static final VIDEO_SDP_MIME_TYPE:Ljava/lang/String; = "application/sdp"

.field private static final VIDEO_SDP_TITLE:Ljava/lang/String; = "rtsp://"


# instance fields
.field private mControlResumed:Z

.field private mFinishOnCompletion:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

.field private mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

.field private mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

.field private mResumed:Z

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mShareMenu:Landroid/view/MenuItem;

.field private mShareProvider:Landroid/widget/ShareActionProvider;

.field private mTreatUpAsBack:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 331
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    .line 332
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 372
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/MovieActivity$2;-><init>(Lcom/android/gallery3d/app/MovieActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/MovieActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/app/MovieActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/MovieActivity;)Lcom/android/gallery3d/app/MoviePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/MovieActivity;)Lcom/mediatek/gallery3d/ext/IMovieItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    return-object v0
.end method

.method private collapseShareMenu()V
    .locals 4

    .prologue
    .line 493
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ActivityChooserView;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserView;

    .line 496
    .local v0, chooserView:Landroid/widget/ActivityChooserView;
    const-string v1, "MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapseShareMenu() chooserView.isShowingPopup()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->isShowingPopup()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    .line 500
    .end local v0           #chooserView:Landroid/widget/ActivityChooserView;
    :cond_0
    return-void
.end method

.method private enhanceActionBar()V
    .locals 7

    .prologue
    .line 403
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 404
    .local v1, movieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 405
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, scheme:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v4}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, authority:Ljava/lang/String;
    new-instance v4, Lcom/android/gallery3d/app/MovieActivity$3;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/gallery3d/app/MovieActivity$3;-><init>(Lcom/android/gallery3d/app/MovieActivity;Ljava/lang/String;Landroid/net/Uri;Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/MovieActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 439
    const-string v4, "MovieActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enhanceActionBar() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method

.method private initMovieInfo(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 355
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 356
    .local v1, original:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, mimeType:Ljava/lang/String;
    const-string v2, "application/sdp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    new-instance v2, Lcom/mediatek/gallery3d/ext/MovieItem;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rtsp://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v5}, Lcom/mediatek/gallery3d/ext/MovieItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 363
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2, v1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->setOriginalUri(Landroid/net/Uri;)V

    .line 365
    const-string v2, "MovieActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initMovieInfo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") mMovieInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 361
    :cond_0
    new-instance v2, Lcom/mediatek/gallery3d/ext/MovieItem;

    invoke-direct {v2, v1, v0, v5}, Lcom/mediatek/gallery3d/ext/MovieItem;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    goto :goto_0
.end method

.method private initializeActionBar(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    .line 133
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 134
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v2, "logo-bitmap"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 135
    .local v1, logo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 136
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 141
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 174
    const-string v2, "MovieActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeActionBar() mMovieInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 4

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_0

    .line 336
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 341
    .local v0, locked:Z
    :goto_0
    const-string v1, "MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardLocked() locked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mKeyguardManager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v0

    .line 339
    .end local v0           #locked:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshShareProvider(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    if-eqz v1, :cond_0

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v0, intent:Landroid/content/Intent;
    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v1, "android.intent.extra.STREAM"

    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 478
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v1, v0}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 481
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshShareProvider() mShareProvider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 475
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const-string v1, "android.intent.extra.TEXT"

    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerScreenOff()V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/gallery3d/app/MovieActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    return-void
.end method

.method private unregisterScreenOff()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 398
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 81
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->requestWindowFeature(I)Z

    .line 82
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setVolumeControlStream(I)V

    .line 83
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setContentView(I)V

    .line 84
    const v0, 0x7f0b003f

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, rootView:Landroid/view/View;
    const/16 v0, 0x700

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 89
    .local v7, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getHooker(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IActivityHooker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 90
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/MovieActivity;->initMovieInfo(Landroid/content/Intent;)V

    .line 91
    invoke-direct {p0, v7}, Lcom/android/gallery3d/app/MovieActivity;->initializeActionBar(Landroid/content/Intent;)V

    .line 92
    const-string v0, "android.intent.extra.finishOnCompletion"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    .line 94
    const-string v0, "treat-up-as-back"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    .line 95
    new-instance v0, Lcom/android/gallery3d/app/MovieActivity$1;

    iget-object v4, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mFinishOnCompletion:Z

    if-nez v3, :cond_1

    :goto_0
    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/app/MovieActivity$1;-><init>(Lcom/android/gallery3d/app/MovieActivity;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/ext/IMovieItem;Landroid/os/Bundle;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    .line 107
    const-string v0, "android.intent.extra.screenOrientation"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const-string v0, "android.intent.extra.screenOrientation"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 111
    .local v8, orientation:I
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getRequestedOrientation()I

    move-result v0

    if-eq v8, v0, :cond_0

    .line 112
    invoke-virtual {p0, v8}, Lcom/android/gallery3d/app/MovieActivity;->setRequestedOrientation(I)V

    .line 115
    .end local v8           #orientation:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 116
    .local v9, win:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 117
    .local v10, winParams:Landroid/view/WindowManager$LayoutParams;
    const/4 v0, 0x0

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 118
    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 119
    invoke-virtual {v9, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    invoke-virtual {v9, v11}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0, p0, v7}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->init(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->getMoviePlayerExt()Lcom/mediatek/gallery3d/ext/IMoviePlayer;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0, v11, v1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->getVideoSurface()Landroid/view/SurfaceView;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onCreate(Landroid/os/Bundle;)V

    .line 129
    return-void

    .end local v9           #win:Landroid/view/Window;
    .end local v10           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    move v6, v1

    .line 95
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 181
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v3}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/ext/MovieUtils;->isLocalFile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    .line 182
    .local v0, local:Z
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MtkUtils;->canShare(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/mediatek/gallery3d/video/ExtensionHelper;->getMovieDrmExtension(Landroid/content/Context;)Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v2, p0, v3}, Lcom/mediatek/gallery3d/ext/IMovieDrmExtension;->canShare(Landroid/content/Context;Lcom/mediatek/gallery3d/ext/IMovieItem;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v2, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f110005

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 187
    const v2, 0x7f0b0101

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareMenu:Landroid/view/MenuItem;

    .line 188
    invoke-static {p1}, Lcom/android/gallery3d/app/GalleryActionBar;->initializeShareActionProvider(Landroid/view/Menu;)Landroid/widget/ShareActionProvider;

    move-result-object v1

    .line 189
    .local v1, provider:Landroid/widget/ShareActionProvider;
    iput-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    .line 190
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mShareProvider:Landroid/widget/ShareActionProvider;

    const-string v3, "video_share_history_file"

    invoke-virtual {v2, v3}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/MovieActivity;->refreshShareProvider(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onDestroy()V

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 314
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onDestroy()V

    .line 315
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 222
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mTreatUpAsBack:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    .line 228
    :goto_0
    const/4 v0, 0x1

    .line 230
    :goto_1
    return v0

    .line 225
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/app/Gallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->startActivity(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->finish()V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 263
    const-string v1, "MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause() isKeyguardLocked="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->isKeyguardLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mResumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mControlResumed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    .line 267
    iget-boolean v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MoviePlayer;->onPause()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 270
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 271
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->collapseShareMenu()V

    .line 272
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onPause()V

    .line 273
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 278
    const-string v0, "MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() isKeyguardLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mControlResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    .line 282
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 284
    iput-boolean v3, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->enhanceActionBar()V

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onResume()V

    .line 289
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/MoviePlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onStart()V

    .line 237
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->registerScreenOff()V

    .line 239
    const-string v0, "MovieActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 245
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 248
    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onStop()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onStop()V

    .line 253
    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->unregisterScreenOff()V

    .line 255
    const-string v0, "MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() isKeyguardLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mControlResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 295
    const-string v0, "MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") isKeyguardLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->isKeyguardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mControlResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/MovieActivity;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mPlayer:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MoviePlayer;->onResume()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mControlResumed:Z

    .line 302
    :cond_0
    return-void
.end method

.method public refreshMovieInfo(Lcom/mediatek/gallery3d/ext/IMovieItem;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    .line 456
    invoke-interface {p1}, Lcom/mediatek/gallery3d/ext/IMovieItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/MovieActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MovieActivity;->refreshShareProvider(Lcom/mediatek/gallery3d/ext/IMovieItem;)V

    .line 458
    iget-object v0, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieHooker:Lcom/mediatek/gallery3d/ext/IActivityHooker;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/app/MovieActivity;->mMovieItem:Lcom/mediatek/gallery3d/ext/IMovieItem;

    invoke-interface {v0, v1, v2}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    const-string v0, "MovieActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshMovieInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "title"

    .prologue
    .line 445
    const-string v1, "MovieActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActionBarTitle("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MovieActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 448
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz p1, :cond_0

    .line 449
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 451
    :cond_0
    return-void
.end method
