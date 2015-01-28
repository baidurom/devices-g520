.class public Lcom/android/camera/ui/InLineSettingVirtual;
.super Lcom/android/camera/ui/InLineSettingItem;
.source "InLineSettingVirtual.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;
.implements Lcom/android/camera/ui/SettingVirtualLayout$Listener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "InLineSettingVirtualItem"


# instance fields
.field private mChildPrefs:[Lcom/android/camera/ListPreference;

.field private mContext:Lcom/android/camera/Camera;

.field private mEntry:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSettingContainer:Landroid/view/View;

.field private mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

.field private mShowingChildList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/InLineSettingVirtual;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Lcom/android/camera/ui/InLineSettingVirtual$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingVirtual$1;-><init>(Lcom/android/camera/ui/InLineSettingVirtual;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 70
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    .line 71
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/camera/ui/InLineSettingVirtual;->LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/InLineSettingVirtual;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/InLineSettingVirtual;)[Lcom/android/camera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    return-object v0
.end method

.method private highlight()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    return-void
.end method

.method private normalText()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    :cond_1
    const v0, 0x7f020142

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 230
    return-void
.end method

.method private setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 245
    sget-boolean v0, Lcom/android/camera/ui/InLineSettingVirtual;->LOG:Z

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "InLineSettingVirtualItem"

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

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 251
    :cond_1
    return-void
.end method


# virtual methods
.method public collapseChild()Z
    .locals 4

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, collapse:Z
    iget-boolean v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera;->removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 195
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    .line 197
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingItem;->fadeOut(Landroid/view/View;)V

    .line 198
    invoke-direct {p0}, Lcom/android/camera/ui/InLineSettingVirtual;->normalText()V

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    .line 200
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    .line 201
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v1, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onDismiss(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 204
    :cond_0
    const/4 v0, 0x1

    .line 206
    :cond_1
    sget-boolean v1, Lcom/android/camera/ui/InLineSettingVirtual;->LOG:Z

    if-eqz v1, :cond_2

    .line 207
    const-string v1, "InLineSettingVirtualItem"

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

    .line 209
    :cond_2
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingVirtual;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public expendChild()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, expend:Z
    iget-boolean v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    if-nez v1, :cond_1

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    const v2, 0x7f040051

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SettingVirtualLayout;

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    .line 170
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingContainer:Landroid/view/View;

    .line 171
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingVirtualLayout;->initialize([Lcom/android/camera/ListPreference;)V

    .line 172
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 174
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 175
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/SettingVirtualLayout;->setSettingChangedListener(Lcom/android/camera/ui/SettingVirtualLayout$Listener;)V

    .line 176
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/InLineSettingVirtual;->setOrientation(IZ)V

    .line 177
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingItem;->fadeIn(Landroid/view/View;)V

    .line 178
    invoke-direct {p0}, Lcom/android/camera/ui/InLineSettingVirtual;->highlight()V

    .line 179
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v1, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onShow(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 182
    :cond_0
    const/4 v0, 0x1

    .line 184
    :cond_1
    sget-boolean v1, Lcom/android/camera/ui/InLineSettingVirtual;->LOG:Z

    if-eqz v1, :cond_2

    .line 185
    const-string v1, "InLineSettingVirtualItem"

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

    .line 187
    :cond_2
    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 94
    sget-boolean v0, Lcom/android/camera/ui/InLineSettingVirtual;->LOG:Z

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "InLineSettingVirtualItem"

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

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->setTitle(Lcom/android/camera/ListPreference;)V

    .line 98
    if-nez p1, :cond_1

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingVirtual;->reloadPreference()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 76
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/InLineSettingVirtual;->setOrientation(IZ)V

    .line 242
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 89
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

    .line 90
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v0, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onSettingChanged(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 237
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 7

    .prologue
    .line 109
    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v3, v4

    .line 110
    .local v3, len:I
    new-array v4, v3, [Lcom/android/camera/ListPreference;

    iput-object v4, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    .line 111
    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 112
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 113
    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    invoke-virtual {v0, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v5

    aput-object v5, v4, v1

    .line 115
    sget-boolean v4, Lcom/android/camera/ui/InLineSettingVirtual;->LOG:Z

    if-eqz v4, :cond_0

    .line 116
    const-string v4, "InLineSettingVirtualItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reloadPreference() mChildPrefs["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingVirtual;->updateView()V

    .line 120
    return-void
.end method

.method protected updateView()V
    .locals 11

    .prologue
    .line 124
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    if-nez v8, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    array-length v5, v8

    .line 129
    .local v5, len:I
    const/4 v0, 0x1

    .line 130
    .local v0, allDefault:Z
    const/4 v2, 0x0

    .line 131
    .local v2, enableCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 132
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    aget-object v6, v8, v4

    .line 133
    .local v6, pref:Lcom/android/camera/ListPreference;
    if-nez v6, :cond_3

    .line 131
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 136
    :cond_3
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, defaultValue:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, value:Ljava/lang/String;
    if-nez v7, :cond_4

    .line 139
    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 141
    :cond_4
    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 145
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 146
    const/4 v0, 0x0

    goto :goto_2

    .line 149
    .end local v1           #defaultValue:Ljava/lang/String;
    .end local v6           #pref:Lcom/android/camera/ListPreference;
    .end local v7           #value:Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_7

    .line 150
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_3
    if-ne v2, v5, :cond_8

    const/4 v3, 0x1

    .line 155
    .local v3, enabled:Z
    :goto_4
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v8, v3}, Lcom/android/camera/ListPreference;->setEnabled(Z)V

    .line 156
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/ui/InLineSettingItem;->setEnabled(Z)V

    .line 157
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    sget-boolean v8, Lcom/android/camera/ui/InLineSettingVirtual;->LOG:Z

    if-eqz v8, :cond_0

    .line 159
    const-string v8, "InLineSettingVirtualItem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateView() enableCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 152
    .end local v3           #enabled:Z
    :cond_7
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 154
    :cond_8
    const/4 v3, 0x0

    goto :goto_4
.end method
