.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMStatus"
.end annotation


# instance fields
.field private mNewSimSlot:I

.field private mSimCount:I

.field private mSimDetectStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter "simDetectStatus"
    .parameter "simCount"
    .parameter "newSimSlot"

    .prologue
    const/4 v1, 0x0

    .line 1500
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1496
    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->mSimCount:I

    .line 1497
    invoke-static {}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->access$3000()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->mSimDetectStatus:Ljava/lang/String;

    .line 1498
    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->mNewSimSlot:I

    .line 1501
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->mSimDetectStatus:Ljava/lang/String;

    .line 1502
    iput p3, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->mSimCount:I

    .line 1503
    iput p4, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->mNewSimSlot:I

    .line 1504
    return-void
.end method


# virtual methods
.method public getNewSimSlot()I
    .locals 1

    .prologue
    .line 1515
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->mNewSimSlot:I

    return v0
.end method

.method public getSIMCount()I
    .locals 1

    .prologue
    .line 1511
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->mSimCount:I

    return v0
.end method

.method public getSimDetectStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SIMStatus;->mSimDetectStatus:Ljava/lang/String;

    return-object v0
.end method
