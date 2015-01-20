.class public Lcom/android/camera/ui/InLineSettingSwitch;
.super Lcom/android/camera/ui/InLineSettingItem;
.source "InLineSettingSwitch.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "InLineSettingSwitch"


# instance fields
.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/InLineSettingSwitch;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/android/camera/ui/InLineSettingSwitch$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingSwitch$1;-><init>(Lcom/android/camera/ui/InLineSettingSwitch;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 95
    new-instance v0, Lcom/android/camera/ui/InLineSettingSwitch$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingSwitch$2;-><init>(Lcom/android/camera/ui/InLineSettingSwitch;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/camera/ui/InLineSettingSwitch;->LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/InLineSettingSwitch;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingSwitch;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 6
    .parameter "preference"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c014e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v5}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 52
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 92
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method protected updateView()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 67
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    .line 69
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    iget v4, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    if-ne v4, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingItem;->setEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    return-void

    .line 73
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, index:I
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v2, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 75
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v2, v1

    .line 74
    goto :goto_1
.end method
