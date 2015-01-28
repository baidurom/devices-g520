.class Lcom/android/internal/policy/impl/NewEventView$1;
.super Landroid/database/ContentObserver;
.source "NewEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/NewEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/NewEventView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/NewEventView;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/NewEventView$1;->this$0:Lcom/android/internal/policy/impl/NewEventView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/NewEventView$1;->this$0:Lcom/android/internal/policy/impl/NewEventView;

    #getter for: Lcom/android/internal/policy/impl/NewEventView;->mNewEventController:Lcom/android/internal/policy/impl/NewEventControllerView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/NewEventView;->access$000(Lcom/android/internal/policy/impl/NewEventView;)Lcom/android/internal/policy/impl/NewEventControllerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/NewEventControllerView;->updateNewEvent()V

    .line 74
    return-void
.end method
