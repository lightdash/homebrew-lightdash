class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2326.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2326.0/lightdash-cli-0.2326.0-macos-arm64.tar.gz"
      sha256 "05d920c711559f305b9d74deeae3c988b926da09b6c08fef27034ff7be9a6624"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2326.0/lightdash-cli-0.2326.0-macos-x64.tar.gz"
      sha256 "1d44e2a73183e8c63d7315629fbca1fd1d99828dcc455dd9ab24e43871a8f162"
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
