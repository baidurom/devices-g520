.class Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;
.super Ljava/lang/Object;
.source "SimSelectionCallOptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/SimSelectionCallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackArgs"
.end annotation


# instance fields
.field public args:Ljava/lang/Object;

.field public id:J

.field public number:Ljava/lang/String;

.field public reason:I

.field final synthetic this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;ILjava/lang/String;JLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "argReason"
    .parameter "argNumber"
    .parameter "argId"
    .parameter "argArgs"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput p2, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 114
    iput-object p3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->number:Ljava/lang/String;

    .line 115
    iput-wide p4, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 116
    iput-object p6, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 117
    return-void
.end method
