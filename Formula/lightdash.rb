class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3188.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3188.2/lightdash-cli-0.3188.2-macos-arm64.tar.gz"
      sha256 "3cd01ccea31374f546a347bbbb977b262171ea8776722142a6911dd9608af1aa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3188.2/lightdash-cli-0.3188.2-macos-x64.tar.gz"
      sha256 "e0eaf28c7655a1635ce98fbcc423f9016145a668a906a69e21ec143081a5f918"
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
