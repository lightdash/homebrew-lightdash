class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2819.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2819.0/lightdash-cli-0.2819.0-macos-arm64.tar.gz"
      sha256 "b5448dbaf8f94891411e73852312dfa71f635fa1c00a9b4b30bc327718a984a4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2819.0/lightdash-cli-0.2819.0-macos-x64.tar.gz"
      sha256 "7cae584bfd457f878f536c170bb9652f339eb810ab83de3dcb1e0197917b0aaf"
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
