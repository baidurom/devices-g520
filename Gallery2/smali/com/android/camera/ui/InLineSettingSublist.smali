.class public Lcom/android/camera/ui/InLineSettingSublist;
.super Lcom/android/camera/ui/InLineSettingItem;
.source "InLineSettingSublist.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;
.implements Lcom/android/camera/ui/SettingSublistLayout$Listener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "InLineSettingSublist"


# instance fields
.field private mContext:Lcom/android/camera/Camera;

.field private mEntry:Landroid/widget/TextView;

.field private mImage:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSettingContainer:Landroid/view/View;

.field private mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

.field private mShowingChildList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/InLineSettingSublist;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/android/camera/ui/InLineSettingSublist$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingSublist$1;-><init>(Lcom/android/camera/ui/InLineSettingSublist;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 65
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    .line 66
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/camera/ui/InLineSettingSublist;->LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/InLineSettingSublist;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    return v0
.end method

.method private highlight()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-void
.end method

.method private normalText()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 188
    :cond_1
    const v0, 0x7f020142

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 189
    return-void
.end method

.method private setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 205
    sget-boolean v0, Lcom/android/camera/ui/InLineSettingSublist;->LOG:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "InLineSettingSublist"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 211
    :cond_1
    return-void
.end method

.method private setTextOrImage(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "text"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 98
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->getIconId(I)I

    move-result v0

    .line 99
    .local v0, iconId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mEntry:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public collapseChild()Z
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, collapse:Z
    iget-boolean v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera;->removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 154
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    .line 156
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingItem;->fadeOut(Landroid/view/View;)V

    .line 157
    invoke-direct {p0}, Lcom/android/camera/ui/InLineSettingSublist;->normalText()V

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v1, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onDismiss(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 163
    :cond_0
    const/4 v0, 0x1

    .line 165
    :cond_1
    sget-boolean v1, Lcom/android/camera/ui/InLineSettingSublist;->LOG:Z

    if-eqz v1, :cond_2

    .line 166
    const-string v1, "InLineSettingSublist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapseChild() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingSublist;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public expendChild()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, expend:Z
    iget-boolean v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    if-nez v1, :cond_1

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    .line 127
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    const v2, 0x7f04004f

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SettingSublistLayout;

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    .line 129
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingContainer:Landroid/view/View;

    .line 130
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingSublistLayout;->initialize(Lcom/android/camera/ListPreference;)V

    .line 131
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 133
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 134
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/SettingSublistLayout;->setSettingChangedListener(Lcom/android/camera/ui/SettingSublistLayout$Listener;)V

    .line 135
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/InLineSettingSublist;->setOrientation(IZ)V

    .line 136
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingItem;->fadeIn(Landroid/view/View;)V

    .line 137
    invoke-direct {p0}, Lcom/android/camera/ui/InLineSettingSublist;->highlight()V

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v1, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onShow(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 141
    :cond_0
    const/4 v0, 0x1

    .line 143
    :cond_1
    sget-boolean v1, Lcom/android/camera/ui/InLineSettingSublist;->LOG:Z

    if-eqz v1, :cond_2

    .line 144
    const-string v1, "InLineSettingSublist"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expendChild() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_2
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 71
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mEntry:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mImage:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/InLineSettingSublist;->setOrientation(IZ)V

    .line 202
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 119
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v0, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onSettingChanged(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingSublist;->collapseChild()Z

    .line 197
    return-void
.end method

.method protected updateView()V
    .locals 5

    .prologue
    .line 78
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    if-nez v2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, override:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 82
    iget v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/InLineSettingSublist;->setTextOrImage(ILjava/lang/String;)V

    .line 93
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/InLineSettingItem;->setEnabled(Z)V

    .line 94
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2, v1}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/ui/InLineSettingSublist;->setTextOrImage(ILjava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_2
    const-string v2, "InLineSettingSublist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to find override value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->print()V

    goto :goto_1
.end method
