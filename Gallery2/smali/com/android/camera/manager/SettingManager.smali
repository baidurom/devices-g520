.class public Lcom/android/camera/manager/SettingManager;
.super Lcom/android/camera/manager/ViewManager;
.source "SettingManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/android/camera/Camera$OnPreferenceReadyListener;
.implements Lcom/android/camera/ui/SettingListLayout$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/SettingManager$MyPagerAdapter;,
        Lcom/android/camera/manager/SettingManager$Holder;,
        Lcom/android/camera/manager/SettingManager$SettingListener;
    }
.end annotation


# static fields
.field private static final DELAY_MSG_REMOVE_SETTING_MS:I = 0xbb8

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final MSG_REMOVE_SETTING:I = 0x0

.field private static final SETTING_PAGE_LAYER:I = 0x2

.field private static final TAB_INDICATOR_KEY_CAMERA:Ljava/lang/String; = "camera"

.field private static final TAB_INDICATOR_KEY_COMMON:Ljava/lang/String; = "common"

.field private static final TAB_INDICATOR_KEY_PREVIEW:Ljava/lang/String; = "preview"

.field private static final TAB_INDICATOR_KEY_VIDEO:Ljava/lang/String; = "video"

.field private static final TAG:Ljava/lang/String; = "SettingManager"


# instance fields
.field private mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mIndicator:Lcom/android/camera/ui/RotateImageView;

.field private mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mSettingLayout:Landroid/view/ViewGroup;

.field private mShowingContainer:Z

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 65
    new-instance v0, Lcom/android/camera/manager/SettingManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/SettingManager$1;-><init>(Lcom/android/camera/manager/SettingManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    .line 86
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnPreferenceReadyListener(Lcom/android/camera/Camera$OnPreferenceReadyListener;)Z

    .line 87
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/manager/SettingManager;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/manager/SettingManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera/manager/SettingManager;->highlightCurrentSetting(I)V

    return-void
.end method

.method private highlightCurrentSetting(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 416
    :cond_0
    return-void
.end method

.method private initializeSettings(Lcom/android/camera/PreferenceGroup;)V
    .locals 11
    .parameter "preferenceGroup"

    .prologue
    .line 258
    iget-object v7, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    if-nez v7, :cond_4

    if-eqz p1, :cond_4

    .line 259
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    const v8, 0x7f04004a

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    .line 262
    iget-object v7, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0b00dd

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TabHost;

    iput-object v7, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    .line 263
    iget-object v7, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->setup()V

    .line 265
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/manager/SettingManager$Holder;>;"
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 281
    new-instance v7, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v8, "common"

    const v9, 0x7f0200d1

    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_COMMON_FOR_TAB:[I

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v7, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v8, "camera"

    const v9, 0x7f0200d0

    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB:[I

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v7, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v8, "video"

    const v9, 0x7f0200d3

    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB:[I

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 329
    .local v6, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v5, pageViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/SettingListLayout;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_3

    .line 331
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/manager/SettingManager$Holder;

    .line 333
    .local v0, holder:Lcom/android/camera/manager/SettingManager$Holder;
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    const v8, 0x7f04004d

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/SettingListLayout;

    .line 335
    .local v4, pageView:Lcom/android/camera/ui/SettingListLayout;
    iget-object v7, v0, Lcom/android/camera/manager/SettingManager$Holder;->mSettingKeys:[I

    invoke-static {v7}, Lcom/android/camera/SettingChecker;->getSettingKeys([I)[Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_2

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v4, p1, v8, v7}, Lcom/android/camera/ui/SettingListLayout;->initialize(Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;Z)V

    .line 336
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 339
    .local v2, indicatorView:Landroid/widget/ImageView;
    const v7, 0x7f02000f

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 340
    iget v7, v0, Lcom/android/camera/manager/SettingManager$Holder;->mIndicatorIconRes:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 342
    iget-object v7, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    iget-object v9, v0, Lcom/android/camera/manager/SettingManager$Holder;->mIndicatorKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    const v9, 0x1020011

    invoke-virtual {v8, v9}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    .end local v0           #holder:Lcom/android/camera/manager/SettingManager$Holder;
    .end local v1           #i:I
    .end local v2           #indicatorView:Landroid/widget/ImageView;
    .end local v4           #pageView:Lcom/android/camera/ui/SettingListLayout;
    .end local v5           #pageViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/SettingListLayout;>;"
    .end local v6           #size:I
    :cond_0
    new-instance v7, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v8, "common"

    const v9, 0x7f0200d1

    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_COMMON_FOR_TAB:[I

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 316
    new-instance v7, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v8, "camera"

    const v9, 0x7f0200d0

    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB:[I

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 320
    :cond_1
    new-instance v7, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v8, "video"

    const v9, 0x7f0200d3

    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB:[I

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 335
    .restart local v0       #holder:Lcom/android/camera/manager/SettingManager$Holder;
    .restart local v1       #i:I
    .restart local v4       #pageView:Lcom/android/camera/ui/SettingListLayout;
    .restart local v5       #pageViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/SettingListLayout;>;"
    .restart local v6       #size:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 347
    .end local v0           #holder:Lcom/android/camera/manager/SettingManager$Holder;
    .end local v4           #pageView:Lcom/android/camera/ui/SettingListLayout;
    :cond_3
    new-instance v7, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-direct {v7, p0, v5}, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/util/List;)V

    iput-object v7, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    .line 349
    iget-object v7, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0b00de

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    .line 350
    iget-object v7, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 351
    iget-object v7, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 352
    iget-object v7, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 354
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/manager/SettingManager$Holder;>;"
    .end local v5           #pageViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/SettingListLayout;>;"
    .end local v6           #size:I
    :cond_4
    iget-object v7, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getOrientation()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 355
    return-void
.end method

.method private releaseSettingResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "SettingManager"

    const-string v1, "releaseSettingResource()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 223
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 224
    iput-object v2, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    .line 225
    iput-object v2, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    .line 226
    iput-object v2, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    .line 228
    :cond_1
    return-void
.end method

.method private setChildrenClickable(Z)V
    .locals 7
    .parameter "clickable"

    .prologue
    .line 377
    sget-boolean v4, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v4, :cond_0

    .line 378
    const-string v4, "SettingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setChildrenClickable("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 381
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {v0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v2

    .line 383
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 384
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v3

    .line 385
    .local v3, pref:Lcom/android/camera/CameraPreference;
    instance-of v4, v3, Lcom/android/camera/ListPreference;

    if-eqz v4, :cond_1

    .line 386
    check-cast v3, Lcom/android/camera/ListPreference;

    .end local v3           #pref:Lcom/android/camera/CameraPreference;
    invoke-virtual {v3, p1}, Lcom/android/camera/ListPreference;->setClickable(Z)V

    .line 383
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_2
    return-void
.end method

.method private showSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 231
    sget-boolean v1, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSetting() mShowingContainer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getContext().isFullScreen()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 237
    .local v0, preferenceGroup:Lcom/android/camera/PreferenceGroup;
    iget-boolean v1, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNormalViewState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iput-boolean v5, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    .line 240
    invoke-direct {p0, v0}, Lcom/android/camera/manager/SettingManager;->initializeSettings(Lcom/android/camera/PreferenceGroup;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 242
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/manager/SettingManager;->highlightCurrentSetting(I)V

    .line 243
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 249
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/android/camera/manager/SettingManager;->startFadeInAnimation(Landroid/view/View;)V

    .line 250
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/camera/manager/SettingManager;->setChildrenClickable(Z)V

    .line 254
    .end local v0           #preferenceGroup:Lcom/android/camera/PreferenceGroup;
    :cond_3
    return-void
.end method

.method private startFadeInAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f050006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeIn:Landroid/view/animation/Animation;

    .line 397
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 400
    :cond_1
    return-void
.end method

.method private startFadeOutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f050007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeOut:Landroid/view/animation/Animation;

    .line 407
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeOut:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 410
    :cond_1
    return-void
.end method


# virtual methods
.method public collapse(Z)Z
    .locals 4
    .parameter "force"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, collapsechild:Z
    iget-boolean v1, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->collapse(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/camera/manager/SettingManager;->hideSetting()V

    .line 130
    :cond_0
    const/4 v0, 0x1

    .line 132
    :cond_1
    sget-boolean v1, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v1, :cond_2

    .line 133
    const-string v1, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mShowingContainer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 91
    const v1, 0x7f04004b

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    .line 93
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object v0
.end method

.method public handleMenuEvent()Z
    .locals 4

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, handle:Z
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 208
    const/4 v0, 0x1

    .line 210
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMenuEvent() isEnabled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isShowing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIndicator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 113
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 114
    return-void
.end method

.method public hideSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 358
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSetting() mShowingContainer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSettingLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/manager/SettingManager;->startFadeOutAnimation(Landroid/view/View;)V

    .line 364
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iput-boolean v3, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    .line 366
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getViewState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 368
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 373
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/manager/SettingManager;->setChildrenClickable(Z)V

    .line 374
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    if-ne p1, v0, :cond_0

    .line 142
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-nez v0, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/android/camera/manager/SettingManager;->showSetting()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->onOrientationChanged(I)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 155
    return-void
.end method

.method public onPreferenceReady()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/camera/manager/SettingManager;->releaseSettingResource()V

    .line 181
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh() isShowing()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowingContainer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingChecker;->applyParametersToUI()V

    .line 105
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->notifyDataSetChanged()V

    .line 107
    :cond_1
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->onRelease()V

    .line 120
    invoke-direct {p0}, Lcom/android/camera/manager/SettingManager;->releaseSettingResource()V

    .line 121
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 2

    .prologue
    .line 159
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "SettingManager"

    const-string v1, "onRestorePreferencesClicked()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-interface {v0}, Lcom/android/camera/manager/SettingManager$SettingListener;->onRestorePreferencesClicked()V

    .line 165
    :cond_1
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ui/SettingListLayout;)V
    .locals 3
    .parameter "settingList"

    .prologue
    .line 169
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-interface {v0}, Lcom/android/camera/manager/SettingManager$SettingListener;->onSharedPreferenceChanged()V

    .line 175
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 176
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 186
    const/4 v0, -0x1

    .line 188
    .local v0, currentIndex:I
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 193
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 194
    const-string v1, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") currentIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/camera/manager/SettingManager$SettingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    .line 201
    return-void
.end method
