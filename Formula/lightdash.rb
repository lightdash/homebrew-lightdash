class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.56.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.56.1/lightdash-cli-3.56.1-macos-arm64.tar.gz"
      sha256 "515a7934785c464aa9f825328e657a58c60f4974900f8c5401644084e91645d5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.56.1/lightdash-cli-3.56.1-macos-x64.tar.gz"
      sha256 "271c5799524e94475dfc50264f54421b027b53658e8b03cd8e6aefad37874502"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.56.1/lightdash-cli-3.56.1-linux-x64.tar.gz"
    sha256 "302b589a8464e6833c8f3a1d42178ba4183016580da64afab88c0289ccbeed6e"

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
