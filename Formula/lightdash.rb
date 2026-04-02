class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2720.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.2/lightdash-cli-0.2720.2-macos-arm64.tar.gz"
      sha256 "aa07ab317bf1d4982ec2f63e0d445f148f10e558752c55ff3a2ba44b7aa884a6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2720.2/lightdash-cli-0.2720.2-macos-x64.tar.gz"
      sha256 "df3d74af4013433b4c35a5eea7785f1b7b76fbbccb33ea3b45cf69e45dd296e1"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
