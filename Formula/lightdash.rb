class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.62.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.62.0/lightdash-cli-1.62.0-macos-arm64.tar.gz"
      sha256 "241140921038294c4e428e109f9943bd76ba32ce5f7ef225962578df935ae86c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.62.0/lightdash-cli-1.62.0-macos-x64.tar.gz"
      sha256 "1ccf893364a56deb3b682e85184140ec0f16a1fd4babd416035bdeb87f97771b"
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
