.class Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;
.super Ljava/lang/Object;
.source "NewEventControllerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NewEventControllerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewEventInfo"
.end annotation


# instance fields
.field misscallCount:I

.field mmsCount:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/NewEventControllerView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NewEventControllerView;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/internal/policy/impl/NewEventControllerView$NewEventInfo;->this$0:Lcom/android/internal/policy/impl/NewEventControllerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
