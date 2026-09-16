class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.243.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.5/lightdash-cli-2.243.5-macos-arm64.tar.gz"
      sha256 "0f7efade7ef7fa883e91efe23553dbaeb1f38129bdebe289219bca740833c0df"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.243.5/lightdash-cli-2.243.5-macos-x64.tar.gz"
      sha256 "a14b2d9b54293f60c60de947a3dd46050b8ed5dd17c02c437ac0fd6777e64ef8"
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
