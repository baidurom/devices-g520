.class Lcom/android/internal/policy/impl/KeyguardViewMediator$6;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$6;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->sendRemoveIPOWinBroadcast()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$3000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    .line 1362
    return-void
.end method
