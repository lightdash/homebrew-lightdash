class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.69.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.69.0/lightdash-cli-3.69.0-macos-arm64.tar.gz"
      sha256 "85c47c0119175f0836b368bb7312abf19a68a754aa4a59466874946c0fbc1b49"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.69.0/lightdash-cli-3.69.0-macos-x64.tar.gz"
      sha256 "0a934096a427461dcd5ee7a5e0079e4879d9319b64760e128aa15026ef64a728"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.69.0/lightdash-cli-3.69.0-linux-x64.tar.gz"
    sha256 "9fae82242062cfbb4b3b775112dff9d290775bfcd168eaa90caa3af798e81eda"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
