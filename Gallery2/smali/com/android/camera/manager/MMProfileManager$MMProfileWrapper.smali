.class Lcom/android/camera/manager/MMProfileManager$MMProfileWrapper;
.super Ljava/lang/Object;
.source "MMProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/MMProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMProfileWrapper"
.end annotation


# static fields
.field private static final MMP_RootEvent:I = 0x1

.field private static final MMProfileFlagEnd:I = 0x2

.field private static final MMProfileFlagEventSeparator:I = 0x8

.field private static final MMProfileFlagPulse:I = 0x4

.field private static final MMProfileFlagStart:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MMProfileEnableEvent(II)V
    .locals 0
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 430
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileEnableEvent(II)V

    .line 431
    return-void
.end method

.method public static MMProfileEnableEventRecursive(II)V
    .locals 0
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 433
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileEnableEventRecursive(II)V

    .line 434
    return-void
.end method

.method public static MMProfileFindEvent(ILjava/lang/String;)I
    .locals 1
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 427
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileFindEvent(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static MMProfileLog(II)V
    .locals 0
    .parameter "event"
    .parameter "type"

    .prologue
    .line 439
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileLog(II)V

    .line 440
    return-void
.end method

.method public static MMProfileLogEx(IIII)V
    .locals 0
    .parameter "event"
    .parameter "type"
    .parameter "data1"
    .parameter "data2"

    .prologue
    .line 442
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileLogEx(IIII)V

    .line 443
    return-void
.end method

.method public static MMProfileLogMetaString(IILjava/lang/String;)I
    .locals 1
    .parameter "event"
    .parameter "type"
    .parameter "str"

    .prologue
    .line 445
    invoke-static {p0, p1, p2}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileLogMetaString(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static MMProfileLogMetaStringEx(IIIILjava/lang/String;)I
    .locals 1
    .parameter "event"
    .parameter "type"
    .parameter "data1"
    .parameter "data2"
    .parameter "str"

    .prologue
    .line 448
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileLogMetaStringEx(IIIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static MMProfileQueryEnable(I)I
    .locals 1
    .parameter "event"

    .prologue
    .line 436
    invoke-static {p0}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileQueryEnable(I)I

    move-result v0

    return v0
.end method

.method public static MMProfileRegisterEvent(ILjava/lang/String;)I
    .locals 1
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 424
    invoke-static {p0, p1}, Lcom/mediatek/mmprofile/MMProfile;->MMProfileRegisterEvent(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
