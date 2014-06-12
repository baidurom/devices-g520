.class public Lcom/android/gallery3d/app/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/android/gallery3d/app/GalleryActivity;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractGalleryActivity"


# instance fields
.field private mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDisableToggleStatusBar:Z

.field private mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

.field private mMountFilter:Landroid/content/IntentFilter;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

.field public mShouldCheckStorageState:Z

.field private mStateManager:Lcom/android/gallery3d/app/StateManager;

.field private mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Lcom/android/gallery3d/app/TransitionStore;

    invoke-direct {v0}, Lcom/android/gallery3d/app/TransitionStore;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 55
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$1;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mShouldCheckStorageState:Z

    return-void
.end method

.method private isDefaultStorageMounted()Z
    .locals 2

    .prologue
    .line 289
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultStorageState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, defaultStorageState:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private toggleStatusBarByOrientation()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    .line 272
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    if-eqz v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 275
    .local v0, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 276
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method


# virtual methods
.method protected disableToggleStatusBar()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mDisableToggleStatusBar:Z

    .line 268
    return-void
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 94
    return-object p0
.end method

.method public getDataManager()Lcom/android/gallery3d/data/DataManager;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    return-object v0
.end method

.method public getGLRoot()Lcom/android/gallery3d/ui/GLRoot;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    return-object v0
.end method

.method public getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/android/gallery3d/app/GalleryActionBar;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/GalleryActionBar;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mActionBar:Lcom/android/gallery3d/app/GalleryActionBar;

    return-object v0
.end method

.method public getOrientationManager()Lcom/android/gallery3d/app/OrientationManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    return-object v0
.end method

.method public declared-synchronized getStateManager()Lcom/android/gallery3d/app/StateManager;
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/android/gallery3d/app/StateManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/StateManager;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getThreadPool()Lcom/android/gallery3d/util/ThreadPool;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionStore()Lcom/android/gallery3d/app/TransitionStore;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mTransitionStore:Lcom/android/gallery3d/app/TransitionStore;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/gallery3d/app/StateManager;->notifyActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 233
    return-void

    .line 231
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 239
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/StateManager;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mStateManager:Lcom/android/gallery3d/app/StateManager;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->onConfigurationChange(Landroid/content/res/Configuration;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v0, Lcom/android/gallery3d/app/OrientationManager;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/OrientationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    .line 70
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->toggleStatusBarByOrientation()V

    .line 71
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 222
    return-void

    .line 220
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 258
    .local v0, root:Lcom/android/gallery3d/ui/GLRoot;
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/StateManager;->itemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 262
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->pause()V

    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onPause()V

    .line 201
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->pause()V

    .line 204
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 208
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getMicroThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 209
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BitmapPool;->clear()V

    .line 210
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getBytesBufferPool()Lcom/android/gallery3d/data/BytesBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/BytesBufferPool;->clear()V

    .line 211
    return-void

    .line 206
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/StateManager;->resume()V

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 192
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->onResume()V

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mOrientationManager:Lcom/android/gallery3d/app/OrientationManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/OrientationManager;->resume()V

    .line 194
    return-void

    .line 190
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->lockRenderThread()V

    .line 78
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/StateManager;->saveState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 140
    const-string v2, "AbstractGalleryActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart: should check storage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mShouldCheckStorageState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mShouldCheckStorageState:Z

    if-nez v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {p0}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMTKExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->isDefaultStorageMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    new-instance v0, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$2;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 154
    .local v0, onCancel:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 160
    .local v1, onClick:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c015e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c015f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 167
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 175
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 180
    :cond_0
    return-void
.end method

.method protected onStorageReady()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 132
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 123
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRootView;

    iput-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity;->mGLRootView:Lcom/android/gallery3d/ui/GLRootView;

    .line 124
    return-void
.end method
