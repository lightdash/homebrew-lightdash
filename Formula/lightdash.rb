class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.72.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.72.0/lightdash-cli-1.72.0-macos-arm64.tar.gz"
      sha256 "d316919d19ccf9ed75744caaa62a7d26046419c5ad34d98764cb0272a6b35558"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.72.0/lightdash-cli-1.72.0-macos-x64.tar.gz"
      sha256 "e1154e62890396e0b396588540f1e19d296d953413e1a87889868c4dc9770953"
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
