class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.94.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.94.0/lightdash-cli-3.94.0-macos-arm64.tar.gz"
      sha256 "dcac3b7ab1905d4a911019e95e8c6c4170def5ecbbf1a40a305e68bb6be56273"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.94.0/lightdash-cli-3.94.0-macos-x64.tar.gz"
      sha256 "40278f66a168eb97187788a724acbad4f96eed2fa914aa8b8e1d32053beed722"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.94.0/lightdash-cli-3.94.0-linux-x64.tar.gz"
    sha256 "5f4864bb6b0773367746ffcfff74c8adda7edaa7feefce69e6dfec5aeb3e0403"

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
