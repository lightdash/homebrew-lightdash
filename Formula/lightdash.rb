class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3320.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3320.2/lightdash-cli-0.3320.2-macos-arm64.tar.gz"
      sha256 "afc417d1a718446c7fbf0e717448a2f83861f6dc00fd6d57d054e1bb9211af0e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3320.2/lightdash-cli-0.3320.2-macos-x64.tar.gz"
      sha256 "62fb82a0c43849ee418005efa815f678f8acc93a69bda38676cbebd2549c66b2"
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
