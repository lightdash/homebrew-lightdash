class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2692.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2692.2/lightdash-cli-0.2692.2-macos-arm64.tar.gz"
      sha256 "20a23ffe2daeca68fde97719442d5869dfac9606d18b7e1c3417da0e5aa726f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2692.2/lightdash-cli-0.2692.2-macos-x64.tar.gz"
      sha256 "b967c4b0ea458f3445ac60a096e78691e8274e28db2bb7c84bf9c496f55f4927"
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
