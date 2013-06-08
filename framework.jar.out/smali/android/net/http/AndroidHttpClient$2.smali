.class Landroid/net/http/AndroidHttpClient$2;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/http/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/AndroidHttpClient;


# direct methods
.method constructor <init>(Landroid/net/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$2;->this$0:Landroid/net/http/AndroidHttpClient;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 195
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 196
    .local v0, context:Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient$2;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient$2;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient$2;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 5

    .prologue
    .line 175
    const-string/jumbo v2, "net.http.logging.enable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, logging:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Landroid/net/http/AndroidHttpClient$2;->this$0:Landroid/net/http/AndroidHttpClient;

    const-string v3, "AndroidHttpClient"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/net/http/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 184
    :goto_0
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v1

    .line 185
    .local v1, processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    invoke-static {}, Landroid/net/http/AndroidHttpClient;->access$000()Lorg/apache/http/HttpRequestInterceptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 186
    new-instance v2, Landroid/net/http/AndroidHttpClient$CurlLogger;

    iget-object v3, p0, Landroid/net/http/AndroidHttpClient$2;->this$0:Landroid/net/http/AndroidHttpClient;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/http/AndroidHttpClient$CurlLogger;-><init>(Landroid/net/http/AndroidHttpClient;Landroid/net/http/AndroidHttpClient$1;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 188
    return-object v1

    .line 179
    .end local v1           #processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    :cond_0
    iget-object v2, p0, Landroid/net/http/AndroidHttpClient$2;->this$0:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->disableCurlLogging()V

    goto :goto_0
.end method
