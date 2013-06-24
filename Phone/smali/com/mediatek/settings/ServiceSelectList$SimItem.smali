.class Lcom/mediatek/settings/ServiceSelectList$SimItem;
.super Ljava/lang/Object;
.source "ServiceSelectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/ServiceSelectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimItem"
.end annotation


# static fields
.field public static final DESCRIPTION_LIST_ITEM_SIMID:J = -0x2L

.field public static final OFF_LIST_ITEM_SIMID:J = -0x1L


# instance fields
.field public mColor:I

.field public mDispalyNumberFormat:I

.field public mHas3GCapability:Z

.field public mIsSim:Z

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimID:J

.field public mSlot:I

.field public mState:I

.field final synthetic this$0:Lcom/mediatek/settings/ServiceSelectList;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/ServiceSelectList;Landroid/provider/Telephony$SIMInfo;)V
    .locals 4
    .parameter
    .parameter "siminfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 432
    iput-object p1, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->this$0:Lcom/mediatek/settings/ServiceSelectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-boolean v1, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mHas3GCapability:Z

    .line 412
    iput-boolean v0, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mIsSim:Z

    .line 413
    iput-object v3, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    .line 414
    iput-object v3, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mDispalyNumberFormat:I

    .line 416
    iput v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mColor:I

    .line 417
    iput v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSlot:I

    .line 418
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSimID:J

    .line 419
    const/4 v2, 0x5

    iput v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mState:I

    .line 433
    iput-boolean v0, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mIsSim:Z

    .line 434
    iget-object v2, p2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    .line 435
    iget-object v2, p2, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    .line 436
    iget v2, p2, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    iput v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mDispalyNumberFormat:I

    .line 437
    iget v2, p2, Landroid/provider/Telephony$SIMInfo;->mColor:I

    iput v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mColor:I

    .line 438
    iget v2, p2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSlot:I

    .line 439
    iget-wide v2, p2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSimID:J

    .line 440
    #getter for: Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {p1}, Lcom/mediatek/settings/ServiceSelectList;->access$400(Lcom/mediatek/settings/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 441
    iget v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSlot:I

    #getter for: Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {p1}, Lcom/mediatek/settings/ServiceSelectList;->access$400(Lcom/mediatek/settings/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mHas3GCapability:Z

    .line 443
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 441
    goto :goto_0
.end method

.method public constructor <init>(Lcom/mediatek/settings/ServiceSelectList;Ljava/lang/String;IJ)V
    .locals 4
    .parameter
    .parameter "name"
    .parameter "color"
    .parameter "simID"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 422
    iput-object p1, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->this$0:Lcom/mediatek/settings/ServiceSelectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-boolean v1, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mHas3GCapability:Z

    .line 412
    iput-boolean v0, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mIsSim:Z

    .line 413
    iput-object v3, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    .line 414
    iput-object v3, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mNumber:Ljava/lang/String;

    .line 415
    iput v1, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mDispalyNumberFormat:I

    .line 416
    iput v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mColor:I

    .line 417
    iput v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSlot:I

    .line 418
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSimID:J

    .line 419
    const/4 v2, 0x5

    iput v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mState:I

    .line 423
    iput-object p2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mName:Ljava/lang/String;

    .line 424
    iput p3, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mColor:I

    .line 425
    iput-boolean v1, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mIsSim:Z

    .line 426
    iput-wide p4, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSimID:J

    .line 427
    #getter for: Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {p1}, Lcom/mediatek/settings/ServiceSelectList;->access$400(Lcom/mediatek/settings/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 428
    iget v2, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mSlot:I

    #getter for: Lcom/mediatek/settings/ServiceSelectList;->mPhoneMgr:Lcom/android/phone/PhoneInterfaceManager;
    invoke-static {p1}, Lcom/mediatek/settings/ServiceSelectList;->access$400(Lcom/mediatek/settings/ServiceSelectList;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v3

    if-ne v2, v3, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/ServiceSelectList$SimItem;->mHas3GCapability:Z

    .line 430
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 428
    goto :goto_0
.end method
