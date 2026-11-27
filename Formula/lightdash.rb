class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.434.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.434.0/lightdash-cli-3.434.0-macos-arm64.tar.gz"
      sha256 "5c776d9219765eb6b02d0ccf75aa9c7b8377f1f2af188819882e4257ec4dd429"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.434.0/lightdash-cli-3.434.0-macos-x64.tar.gz"
      sha256 "a8ca75fa331dd85a250620686d05ca0315d71cd9258cd814897d4cede8198fff"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.434.0/lightdash-cli-3.434.0-linux-x64.tar.gz"
    sha256 "022f3ac6178f9c09ec8eeabdb5550f0dec3ea4e8c6bc8462f77453ccf6cba3d6"

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
