class Jtree < Formula
  desc "Display Jaeger traces as a hierarchical tree in your terminal"
  homepage "https://github.com/tomarrell/jtree"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tomarrell/jtree/releases/download/v0.1.0/jtree_0.1.0_darwin_amd64.tar.gz"
      sha256 "3f8155b489c00db20abcdccfc143524b56731c76e1b5b31b55285bc8d62737f6"
    end
    on_arm do
      url "https://github.com/tomarrell/jtree/releases/download/v0.1.0/jtree_0.1.0_darwin_arm64.tar.gz"
      sha256 "8415e6701d9c62b9f9fd25c1ad2b2fd79ba56a78d82dcf318b5a0061570b2c6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tomarrell/jtree/releases/download/v0.1.0/jtree_0.1.0_linux_amd64.tar.gz"
      sha256 "6fd14f091db68c09786585e987e99523eb07c353f67d2cf1c46cefc1d7210fc3"
    end
    on_arm do
      url "https://github.com/tomarrell/jtree/releases/download/v0.1.0/jtree_0.1.0_linux_arm64.tar.gz"
      sha256 "c46a6f466efa6f29cd2cd3f996784e0e5990227ea192c0492410a07f562eeb24"
    end
  end

  def install
    bin.install "jtree"
  end

  test do
    system "#{bin}/jtree", "-h"
  end
end
