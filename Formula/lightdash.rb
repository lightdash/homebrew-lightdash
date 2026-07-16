class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3401.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3401.2/lightdash-cli-0.3401.2-macos-arm64.tar.gz"
      sha256 "0d5e1bfd31c71ca9e94d063fac9e6a857f89d1969f06319d84078a76f01ab519"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3401.2/lightdash-cli-0.3401.2-macos-x64.tar.gz"
      sha256 "02dd05598c199388024d638609415ffac311a424909815b231dcf63eb7694a58"
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
