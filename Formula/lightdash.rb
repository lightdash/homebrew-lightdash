class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2286.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2286.0/lightdash-cli-0.2286.0-macos-arm64.tar.gz"
      sha256 "b5e74404bd40d5c10799cc6e506b38f478c45f21ed4bb67248c3e103632c70de"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2286.0/lightdash-cli-0.2286.0-macos-x64.tar.gz"
      sha256 "04c560c64b9143d80c13d9b062dbcc18d7890d462d534c49de9744eb05bf8f52"
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
