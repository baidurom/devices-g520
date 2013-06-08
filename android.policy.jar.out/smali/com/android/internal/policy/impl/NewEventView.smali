.class public Lcom/android/internal/policy/impl/NewEventView;
.super Landroid/widget/TextView;
.source "NewEventView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DRAWABLE_PADDING:I = 0xa

.field private static final MAX_COUNT:I = 0x63

.field private static final MORE_STRING:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "NewEventView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventChangeObserver:Landroid/database/ContentObserver;

.field private mNewEventController:Lcom/android/internal/policy/impl/NewEventControllerView;

.field private mNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/NewEventView;->mNumber:I

    .line 70
    new-instance v0, Lcom/android/internal/policy/impl/NewEventView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/NewEventView$1;-><init>(Lcom/android/internal/policy/impl/NewEventView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/NewEventView;->mEventChangeObserver:Landroid/database/ContentObserver;

    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/NewEventView;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/NewEventView;)Lcom/android/internal/policy/impl/NewEventControllerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventView;->mNewEventController:Lcom/android/internal/policy/impl/NewEventControllerView;

    return-object v0
.end method


# virtual methods
.method public Init(I)V
    .locals 4
    .parameter "resourceId"

    .prologue
    const/4 v3, 0x0

    .line 87
    const-string v1, "NewEventView"

    const-string v2, "Init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/android/internal/policy/impl/NewEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 89
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/android/internal/policy/impl/NewEventView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 90
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/NewEventView;->setCompoundDrawablePadding(I)V

    .line 91
    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/NewEventView;->setGravity(I)V

    .line 92
    return-void
.end method

.method public registerUpdateListener(Ljava/lang/String;)V
    .locals 4
    .parameter "settingValue"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/NewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/NewEventView;->mEventChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    return-void
.end method

.method public setController(Lcom/android/internal/policy/impl/NewEventControllerView;)V
    .locals 0
    .parameter "newEventController"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/internal/policy/impl/NewEventView;->mNewEventController:Lcom/android/internal/policy/impl/NewEventControllerView;

    .line 84
    return-void
.end method

.method public setNumber(I)V
    .locals 4
    .parameter "count"

    .prologue
    const/16 v3, 0x63

    .line 95
    const-string v0, "NewEventView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNumber count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    if-gtz p1, :cond_0

    .line 99
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/NewEventView;->setVisibility(I)V

    .line 111
    :goto_0
    return-void

    .line 103
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/NewEventView;->mNumber:I

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/NewEventView;->setVisibility(I)V

    .line 106
    if-le p1, v3, :cond_1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/NewEventView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/NewEventView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public unRegisterUpdateListener()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/NewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/NewEventView;->mEventChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method
