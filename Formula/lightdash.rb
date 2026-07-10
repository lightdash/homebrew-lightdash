class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3352.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3352.1/lightdash-cli-0.3352.1-macos-arm64.tar.gz"
      sha256 "75814b396d854cbb68bf87bee84dbfc524a2fa02b587a7461a34840c19f21200"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3352.1/lightdash-cli-0.3352.1-macos-x64.tar.gz"
      sha256 "b7616f84a141df5b3beb985318184bdc6e455e6500c6e79c80405ca66948d1ac"
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
