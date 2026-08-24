class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.251.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.4/lightdash-cli-1.251.4-macos-arm64.tar.gz"
      sha256 "22fdb44d5338be371fb7f5c0fc46b9317120bf91eb8d7cfd03cce708d8074976"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.251.4/lightdash-cli-1.251.4-macos-x64.tar.gz"
      sha256 "eaea8bcc8ad92ba265367a6ada924726d46d53a8adbb56e8459f79696f4ab06c"
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
