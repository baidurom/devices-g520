.class public Lcom/android/internal/policy/impl/UnReadEventView;
.super Landroid/widget/LinearLayout;
.source "UnReadEventView.java"


# static fields
.field private static final CLEAR_NEW_EVENT_VIEW_INTENT:Ljava/lang/String; = "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

.field private static final DEBUG:Z = true

.field private static final MISSED_CALL_SETTING:Ljava/lang/String; = "com_android_contacts_mtk_unread"

.field private static final TAG:Ljava/lang/String; = "UnReadEventView"

.field private static final UNRAD_EMAIL_SETTING:Ljava/lang/String; = "com_android_email_mtk_unread"

.field private static final UNREAD_MMS_SETTING:Ljava/lang/String; = "com_android_mms_mtk_unread"


# instance fields
.field private mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

.field private mNewEventViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/LockScreenNewEventView;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryBaseTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/UnReadEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/UnReadEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v5, Lcom/android/internal/policy/impl/UnReadEventView$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/UnReadEventView$1;-><init>(Lcom/android/internal/policy/impl/UnReadEventView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mQueryBaseTime:J

    .line 79
    sget-object v5, Lcom/mediatek/internal/R$styleable;->UnReadEventView:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 82
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 83
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 84
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 85
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 83
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :pswitch_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 89
    .local v4, outValue:Landroid/util/TypedValue;
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/UnReadEventView;->initUnReadViews(I)V

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 93
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must specify at least one target drawable"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    .end local v2           #attr:I
    .end local v4           #outValue:Landroid/util/TypedValue;
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/UnReadEventView;->setMotionEventSplittingEnabled(Z)V

    .line 99
    return-void

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/UnReadEventView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initUnReadViews(I)V
    .locals 12
    .parameter "resourceId"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 107
    .local v8, res:Landroid/content/res/Resources;
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 108
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 109
    .local v1, count:I
    if-gtz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v3, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 115
    .local v5, layouterInfalter:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v7, newEventViwsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/LockScreenNewEventView;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 117
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 118
    .local v9, value:Landroid/util/TypedValue;
    if-eqz v9, :cond_1

    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    if-lez v10, :cond_1

    .line 119
    const v10, 0x207000b

    const/4 v11, 0x0

    invoke-virtual {v5, v10, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 120
    .local v2, drawableView:Landroid/view/ViewGroup;
    const v10, 0x20e0022

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    .line 121
    .local v6, newEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->setTopParent(Landroid/view/ViewGroup;)V

    .line 122
    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->init(I)V

    .line 123
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->setViewVisibility(I)V

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnReadEventView;->addView(Landroid/view/View;)V

    .line 125
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v2           #drawableView:Landroid/view/ViewGroup;
    .end local v6           #newEventView:Lcom/android/internal/policy/impl/LockScreenNewEventView;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    .end local v9           #value:Landroid/util/TypedValue;
    :cond_2
    iput-object v7, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private registerNewEventObserver(Lcom/android/internal/policy/impl/LockScreenNewEventView;)V
    .locals 6
    .parameter "newEventView"

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->getResourceId()I

    move-result v0

    .line 164
    .local v0, resourceId:I
    packed-switch v0, :pswitch_data_0

    .line 175
    :goto_0
    return-void

    .line 166
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/MmsUnReadObserver;->MMS_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/internal/policy/impl/MmsUnReadObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-wide v4, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/internal/policy/impl/MmsUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/LockScreenNewEventView;J)V

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/UnReadObserver;)V

    goto :goto_0

    .line 169
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/MissCallUnReadObserver;->MISS_CALL_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/internal/policy/impl/MissCallUnReadObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-wide v4, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/internal/policy/impl/MissCallUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/LockScreenNewEventView;J)V

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/UnReadObserver;)V

    goto :goto_0

    .line 172
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/EmailUnReadObserver;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Lcom/android/internal/policy/impl/EmailUnReadObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-wide v4, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/android/internal/policy/impl/EmailUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/LockScreenNewEventView;J)V

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/UnReadObserver;)V

    goto :goto_0

    .line 164
    :pswitch_data_0
    .packed-switch 0x2020061
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getNewEventViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/LockScreenNewEventView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 135
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 139
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 140
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnReadEventView;->registerNewEventObserver(Lcom/android/internal/policy/impl/LockScreenNewEventView;)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 151
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 155
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/LockScreenNewEventView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockScreenNewEventView;->unRegisterNewEventObserver()V

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnReadEventView;->mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 179
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 180
    return-void
.end method
