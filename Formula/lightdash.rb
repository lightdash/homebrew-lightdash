class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3190.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3190.2/lightdash-cli-0.3190.2-macos-arm64.tar.gz"
      sha256 "71ac199481e8c8461309169decdd77cc65789d8f23e2c30a7acbfc532a630818"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3190.2/lightdash-cli-0.3190.2-macos-x64.tar.gz"
      sha256 "d5b56c56f94095875fc5058e616713e2e87c9644474ed68b130ae92dac8abb17"
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
