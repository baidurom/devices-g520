.class public Lcom/mediatek/phone/provider/CallHistoryAsync$DeleteCallArgs;
.super Ljava/lang/Object;
.source "CallHistoryAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/provider/CallHistoryAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteCallArgs"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "number"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/mediatek/phone/provider/CallHistoryAsync$DeleteCallArgs;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/mediatek/phone/provider/CallHistoryAsync$DeleteCallArgs;->mNumber:Ljava/lang/String;

    .line 73
    return-void
.end method
