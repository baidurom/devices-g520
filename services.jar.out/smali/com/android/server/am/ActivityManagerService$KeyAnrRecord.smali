.class Lcom/android/server/am/ActivityManagerService$KeyAnrRecord;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyAnrRecord"
.end annotation


# instance fields
.field mActivity:Lcom/android/server/am/ActivityRecord;

.field mAnnotation:Ljava/lang/String;

.field mApp:Lcom/android/server/am/ProcessRecord;

.field mParent:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "app"
    .parameter "activity"
    .parameter "parent"
    .parameter "annotation"

    .prologue
    .line 16732
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$KeyAnrRecord;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16733
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$KeyAnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 16734
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$KeyAnrRecord;->mActivity:Lcom/android/server/am/ActivityRecord;

    .line 16735
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$KeyAnrRecord;->mParent:Lcom/android/server/am/ActivityRecord;

    .line 16736
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$KeyAnrRecord;->mAnnotation:Ljava/lang/String;

    .line 16737
    return-void
.end method
