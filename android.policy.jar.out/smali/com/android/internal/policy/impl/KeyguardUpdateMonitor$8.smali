.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$8;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->handleSIMCardChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$8;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "di"

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$8;->this$0:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportDialogClose()V

    .line 1982
    return-void
.end method
