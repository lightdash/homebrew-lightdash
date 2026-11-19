class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.339.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.339.0/lightdash-cli-3.339.0-macos-arm64.tar.gz"
      sha256 "912e9faf5f6696cd801b45e3a1e631a8935d95f1e6918e32c8c3248e0dc7d316"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.339.0/lightdash-cli-3.339.0-macos-x64.tar.gz"
      sha256 "18c3504aa581b5ff152559e98c89b8a8316e8ed476665bece9230de399fe7923"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.339.0/lightdash-cli-3.339.0-linux-x64.tar.gz"
    sha256 "c3d9f59bb7359897735cceb5c368ce58627f973bd3e3ad67cabfc00d83f75884"

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
