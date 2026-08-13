class Tiny < Formula
  desc "Declarative terminal wizard: YAML in, JSON out"
  homepage "https://github.com/martino-vigiani/tiny"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/martino-vigiani/tiny/releases/download/v0.4.0/tiny-darwin-arm64.tar.gz"
      sha256 "a915723b84970fe7fa692fe306415f61fee4b346abcad67c9ffa5b1075cb2afa"
    else
      url "https://github.com/martino-vigiani/tiny/releases/download/v0.4.0/tiny-darwin-amd64.tar.gz"
      sha256 "85a144294f9222fbe192bbc6377a64e0c0f2d7fcd4323036c8a80a10cbac384f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/martino-vigiani/tiny/releases/download/v0.4.0/tiny-linux-arm64.tar.gz"
      sha256 "c73c26ff3d9c4b652124fa7d343394fc2a5d99393a8926fc98a359cbc9ae0191"
    else
      url "https://github.com/martino-vigiani/tiny/releases/download/v0.4.0/tiny-linux-amd64.tar.gz"
      sha256 "e537d3960b630bcd5d7748b1f7846b58ad12fdae108c1a7cf61066a9f8fc2e04"
    end
  end

  def install
    bin.install "tiny"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tiny -version")
    (testpath/"w.yaml").write <<~YAML
      steps:
        - type: confirm
          key: ok
          title: Go?
          default: "yes"
    YAML
    assert_match '"ok": true', shell_output("#{bin}/tiny -defaults #{testpath}/w.yaml")
  end
end
