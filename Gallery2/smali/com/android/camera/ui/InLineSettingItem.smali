.class public abstract Lcom/android/camera/ui/InLineSettingItem;
.super Landroid/widget/RelativeLayout;
.source "InLineSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/InLineSettingItem$Listener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "InLineSettingItem"


# instance fields
.field protected mFadeIn:Landroid/view/animation/Animation;

.field protected mFadeOut:Landroid/view/animation/Animation;

.field protected mIndex:I

.field protected mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

.field protected mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/android/camera/ListPreference;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/InLineSettingItem;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected changeIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 94
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v0, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onSettingChanged(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->updateView()V

    .line 100
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingItem;->sendAccessibilityEvent(I)V

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public collapseChild()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public expendChild()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public fadeIn(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 149
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mFadeIn:Landroid/view/animation/Animation;

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mFadeIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public fadeOut(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 138
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mFadeOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f050007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mFadeOut:Landroid/view/animation/Animation;

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mFadeOut:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getPreference()Lcom/android/camera/ListPreference;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    return-object v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/camera/ui/InLineSettingItem;->LOG:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "InLineSettingItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize("

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

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->setTitle(Lcom/android/camera/ListPreference;)V

    .line 85
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    if-ne v0, p1, :cond_2

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    .line 87
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 69
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/InLineSettingItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    .line 70
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->reloadValue()V

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->updateView()V

    .line 111
    :cond_0
    sget-boolean v0, Lcom/android/camera/ui/InLineSettingItem;->LOG:Z

    if-eqz v0, :cond_1

    .line 112
    const-string v0, "InLineSettingItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadPreference() mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 134
    invoke-static {p0, p1}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    .line 135
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/InLineSettingItem$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    .line 118
    return-void
.end method

.method protected setTitle(Lcom/android/camera/ListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected abstract updateView()V
.end method
