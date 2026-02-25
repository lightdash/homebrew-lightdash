class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2525.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2525.0/lightdash-cli-0.2525.0-macos-arm64.tar.gz"
      sha256 "506c0fd656340855d85c04d402142f0369beed9d944a9b57572b04260a3689c3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2525.0/lightdash-cli-0.2525.0-macos-x64.tar.gz"
      sha256 "6ce853a95604622ca76ff1a616e4f825bbc90b74cc6d41cc26fc716d9367ab13"
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
