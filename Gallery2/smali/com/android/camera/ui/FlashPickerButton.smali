.class public Lcom/android/camera/ui/FlashPickerButton;
.super Lcom/android/camera/ui/PickerButton;
.source "FlashPickerButton.java"


# static fields
.field private static final FLASH_AUTO:Ljava/lang/String; = "auto"

.field private static final FLASH_OFF:Ljava/lang/String; = "off"

.field private static final FLASH_ON:Ljava/lang/String; = "on"

.field private static final FLASH_TORCH:Ljava/lang/String; = "torch"

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "FlashPickerButton"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/FlashPickerButton;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PickerButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getValidIndexIfNotFind(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, index:I
    const-string v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 34
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/camera/ui/FlashPickerButton;->LOG:Z

    if-eqz v1, :cond_1

    .line 35
    const-string v1, "FlashPickerButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidIndexIfNotFind("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    return v0

    .line 29
    :cond_2
    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    iget-object v1, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 31
    :cond_3
    const-string v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    const-string v2, "on"

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
