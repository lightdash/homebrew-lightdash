class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2346.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2346.0/lightdash-cli-0.2346.0-macos-arm64.tar.gz"
      sha256 "ef549a96242dd321727197a160158a33d5c250f4a1662c74b3f623729ae228dd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2346.0/lightdash-cli-0.2346.0-macos-x64.tar.gz"
      sha256 "7b772ccfeace84a4baa2ee94b394540a69e4d97cbc4ee113acbf09697af2f933"
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
