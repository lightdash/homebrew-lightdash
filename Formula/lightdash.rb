class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2597.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2597.0/lightdash-cli-0.2597.0-macos-arm64.tar.gz"
      sha256 "b9381644c881b73bc191c42d6709b282628ccdf2c808e1f767370666d608fd93"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2597.0/lightdash-cli-0.2597.0-macos-x64.tar.gz"
      sha256 "4dc4397204cbfdd5804399b81c8c9f6ccfbea3ebe52624ac4bf3697b141c3027"
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
