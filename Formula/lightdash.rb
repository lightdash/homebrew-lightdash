class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.530.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.530.0/lightdash-cli-2.530.0-macos-arm64.tar.gz"
      sha256 "b95e310f5400fc73b218fcc97015bfd611437edd677fb969e16a087b0e5f80be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.530.0/lightdash-cli-2.530.0-macos-x64.tar.gz"
      sha256 "5beb1e1ef3240153767faf574afb9df04e786f0f35a3177901ca11c0125dd704"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.530.0/lightdash-cli-2.530.0-linux-x64.tar.gz"
    sha256 "b76f2a86edda4246eba8807de56d574d6c5e775f01415c03dca55290446d9925"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
