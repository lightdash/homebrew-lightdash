class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.320.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.320.0/lightdash-cli-2.320.0-macos-arm64.tar.gz"
      sha256 "ae862f51bab929fbd5892f4083c171b14c85bb9bece864b29a0f640a523496c8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.320.0/lightdash-cli-2.320.0-macos-x64.tar.gz"
      sha256 "1fc6d6934b44b86aa3fee959552cecca4a4f92c72744d4b304ac232ed1c93705"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.320.0/lightdash-cli-2.320.0-linux-x64.tar.gz"
    sha256 "758cc9e1c31c29c56576ae3323adfa7c00ab76052c8e90f543bc25952d8340ad"

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
