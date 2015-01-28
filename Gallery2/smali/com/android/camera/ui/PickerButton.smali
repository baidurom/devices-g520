.class public Lcom/android/camera/ui/PickerButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "PickerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PickerButton$Listener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "PickButton"


# instance fields
.field protected mListener:Lcom/android/camera/ui/PickerButton$Listener;

.field protected mPreference:Lcom/android/camera/IconListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/PickerButton;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getValidIndexIfNotFind(Ljava/lang/String;)I
    .locals 1
    .parameter "value"

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/android/camera/IconListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/camera/ui/PickerButton;->LOG:Z

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "PickButton"

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

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 95
    iget-object v4, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-nez v4, :cond_1

    .line 96
    const-string v4, "PickButton"

    const-string v5, "onClick() why mPreference is null?"

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, index:I
    if-gez v0, :cond_2

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/PickerButton;->getValidIndexIfNotFind(Ljava/lang/String;)I

    move-result v0

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 107
    .local v3, values:[Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    rem-int v0, v4, v5

    .line 108
    iget-object v4, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v0}, Lcom/android/camera/ListPreference;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, next:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/ui/PickerButton;->mListener:Lcom/android/camera/ui/PickerButton$Listener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/ui/PickerButton;->mListener:Lcom/android/camera/ui/PickerButton$Listener;

    iget-object v5, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p0, v5, v1}, Lcom/android/camera/ui/PickerButton$Listener;->onPicked(Lcom/android/camera/ui/PickerButton;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    iget-object v4, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v0}, Lcom/android/camera/ListPreference;->setValueIndex(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 6

    .prologue
    .line 57
    sget-boolean v3, Lcom/android/camera/ui/PickerButton;->LOG:Z

    if-eqz v3, :cond_0

    .line 58
    const-string v3, "PickButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reloadPreference() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 64
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    :goto_0
    return-void

    .line 66
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v3, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, index:I
    iget-object v3, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/IconListPreference;->getIconIds()[I

    move-result-object v0

    .line 70
    .local v0, icons:[I
    if-eqz v0, :cond_3

    .line 71
    if-ltz v1, :cond_4

    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 72
    aget v3, v0, v1

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    :cond_3
    :goto_1
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/PickerButton;->getValidIndexIfNotFind(Ljava/lang/String;)I

    move-result v1

    .line 75
    aget v3, v0, v1

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setListener(Lcom/android/camera/ui/PickerButton$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/ui/PickerButton;->mListener:Lcom/android/camera/ui/PickerButton$Listener;

    .line 46
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/camera/ui/PickerButton;->LOG:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "PickButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mPreference="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 124
    :cond_1
    return-void
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
